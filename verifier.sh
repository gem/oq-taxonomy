#!/bin/bash
#
# verifier.sh  Copyright (c) 2016-2017, GEM Foundation.
#
# OpenQuake is free software: you can redistribute it and/or modify it
# under the terms of the GNU Affero General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

#
# DESCRIPTION
#
# all lxc instances are ephemeral
#
# ephemeral containers are "clones" of a base container and have a
# temporary file system that reflects the contents of the base container
# but any modifications are stored in another in-memory, overlayed
# file system
#

# export PS4='+${BASH_SOURCE}:${LINENO}:${FUNCNAME[0]}: '

if [ $GEM_SET_DEBUG ]; then
    set -x
fi

set -e

GEM_GIT_REPO="git://github.com/gem"
GEM_GIT_PACKAGE="oq-taxonomy"

if [ "$GEM_EPHEM_CMD" = "" ]; then
    GEM_EPHEM_CMD="lxc-copy"
fi
if [ "$GEM_EPHEM_NAME" = "" ]; then
    GEM_EPHEM_NAME="ubuntu16-x11-lxc-eph"
fi
if [ "$GEM_EPHEM_USER" = "" ]; then
    GEM_EPHEM_USER="ubuntu"
fi

LXC_VER=$(lxc-ls --version | cut -d '.' -f 1)

if [ $LXC_VER -lt 2 ]; then
    echo "LXC >= 2.0.0 is required." >&2
    echo "Hint: LXC 2.0 is available for Trusty from backports."
    exit 1
fi

GEM_EPHEM_EXE="${GEM_EPHEM_CMD} -n ${GEM_EPHEM_NAME} -e"

if [ "$GEM_EPHEM_DESTROY" != "" ]; then
    LXC_DESTROY="$GEM_EPHEM_DESTROY"
else
    LXC_DESTROY="true"
fi

#
#  remote init files
cat >.gem_init.sh <<EOF
export GEM_SET_DEBUG=$GEM_SET_DEBUG
if [ "$OQ_MOON_STATS" = "true" ]; then
    export OQ_MOON_STATS=$OQ_MOON_STATS
fi

set -e
if [ -n "\$GEM_SET_DEBUG" -a "\$GEM_SET_DEBUG" != "false" ]; then
    export PS4='+\${BASH_SOURCE}:\${LINENO}:\${FUNCNAME[0]}: '
    set -x
fi
source .gem_ffox_init.sh
EOF

cat >.gem_ffox_init.sh <<EOF
export GEM_FIREFOX_ON_HOLD=$GEM_FIREFOX_ON_HOLD
if [ "\$GEM_FIREFOX_ON_HOLD" ]; then
    sudo apt-mark hold firefox firefox-locale-en
else
    sudo apt-get update
    ffox_pol="\$(apt-cache policy firefox)"
    ffox_cur="\$(echo "\$ffox_pol" | grep '^  Installed:' | sed 's/.*: //g')"
    ffox_can="\$(echo "\$ffox_pol" | grep '^  Candidate:' | sed 's/.*: //g')"
    if [ "\$ffox_cur" != "\$ffox_can" ]; then
        echo "WARNING: firefox has been upgraded, run it to accomplish update operations"
        sudo apt-get -y upgrade
        sudo apt-get -y install wmctrl
        export DISPLAY=:1
        firefox &
        ffox_pid=\$!
        st="none"
        for i in \$(seq 1 1000) ; do
            ffox_wins="\$(wmctrl -l | grep -i "firefox" || true)"
            if [ "\$st" = "none" ]; then
                if echo "\$ffox_wins" | grep -qi 'update'; then
                    st="update"
                elif echo "\$ffox_wins" | grep -qi 'mozilla'; then
                    break
                fi
            elif [ "\$st" = "update" ]; then
                if echo "\$ffox_wins" | grep -qvi 'update'; then
                    break
                fi
            fi
            sleep 0.02
        done
        kill \$ffox_pid || true
        sleep 2
    fi
fi
EOF

#
#  _wait_ssh - wait until the new lxc ssh daemon is ready
#
_wait_ssh () {
    for i in $(seq 1 20); do
        if _cmd "echo begin"; then
            break
        fi
        sleep 2
    done
    if [ $i -eq 20 ]; then
        return 1
    fi
}


LXC_TERM="lxc-stop -t 10"

LXC_KILL="lxc-stop -k"

#
#  _lxc_name_and_ip_get <filename> - retrieve name and ip of the runned ephemeral lxc and
#                                    put them into global vars "lxc_name" and "lxc_ip"
#      <filename>    file where lxc-start-ephemeral output is saved
#
_lxc_name_and_ip_get() {
    if [ "$GEM_EPHEM_IP_GET" = "" ]; then
        local filename="$1" i e

        i=-1
        e=-1
        for i in $(seq 1 40); do
            if [ "$GEM_EPHEM_EXE" = "$GEM_EPHEM_NAME" ]; then
                lxc_name="$GEM_EPHEM_NAME"
                break
            elif grep -q " as clone of $GEM_EPHEM_NAME" $filename 2>&1 ; then
                lxc_name="$(grep " as clone of $GEM_EPHEM_NAME" $filename | tail -n 1 | sed "s/Created \(.*\) as clone of ${GEM_EPHEM_NAME}/\1/g")"
                break
            else
                sleep 2
            fi
        done
        if [ $i -eq 40 ]; then
            return 1
        fi

        for e in $(seq 1 40); do
            sleep 2
            lxc_ip="$(sudo lxc-ls -f --filter "^${lxc_name}\$" | tail -n 1 | sed 's/ \+/ /g' | cut -d ' ' -f 5)"
            if [ "$lxc_ip" -a "$lxc_ip" != "-" ]; then
                lxc_ssh="${GEM_EPHEM_USER}@${lxc_ip}"
                break
            fi
        done
        if [ $e -eq 40 ]; then
            return 1
        fi
        echo "SUCCESSFULY RUNNED $lxc_name ($lxc_ip)"

        return 0
    else
        lxc_name="$GEM_EPHEM_NAME"
        lxc_ip="$(sudo $GEM_EPHEM_IP_GET "$GEM_EPHEM_NAME")"
        lxc_ssh="${GEM_EPHEM_USER}@${lxc_ip}"
        if [ $? -ne 0 ]; then
            return 1
        fi
        echo "SUCCESSFULY RUNNED $lxc_name ($lxc_ip)"

        return 0
    fi
}

_copy_from () {
    if [ -z $1 -a -z $2 ]; then
        echo "ERROR: Source and destination are missing."
        return 1
    fi
    scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $lxc_ssh:"$1" "$2"
}

_copy_to () {
    if [ -z $1 ]; then
        echo "ERROR: Source is missing."
        return 1
    fi
    scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "$1" $lxc_ssh:"$2"
}

_cmd () {
    # No check is performed, since command without arguments is a valid command

    ssh -t -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $lxc_ssh "$1"
}

#
#  _prodtest_innervm_run <branch_id> - part of source test performed on lxc
#
#      <branch_id>    name of the tested branch
#
_prodtest_innervm_run () {
    local branch_id="$1"

    trap 'local LASTERR="$?" ; trap ERR ; (exit $LASTERR) ; return' ERR

    _copy_to .gem_init.sh
    _copy_to .gem_ffox_init.sh

    repo_id="$GEM_GIT_REPO"

    git archive --prefix=$GEM_GIT_PACKAGE/ --format tar HEAD | _cmd "tar -x"


    _cmd "export GEM_SET_DEBUG=$GEM_SET_DEBUG
export GEM_GIT_REPO="$GEM_GIT_REPO"
export GEM_GIT_PACKAGE="$GEM_GIT_PACKAGE"
rem_sig_hand() {
    trap ERR
    echo 'signal trapped'
}
trap rem_sig_hand ERR
set -e
if [ \$GEM_SET_DEBUG ]; then
    set -x
fi
./$GEM_GIT_PACKAGE/verifier-guest.sh $branch_id
"

    echo "_prodtest_innervm_run: exit"

    return 0
}

#
#  prodtest_run <branch_id> - main function of source test
#      <branch_id>    name of the tested branch
#
prodtest_run () {
    local branch_id="$1"

    trap sig_hand SIGINT SIGTERM ERR
    
    sudo echo
    if [ "$GEM_EPHEM_EXE" = "$GEM_EPHEM_NAME" ]; then
        _lxc_name_and_ip_get
    else
        sudo ${GEM_EPHEM_EXE} 2>&1 | tee /tmp/packager.eph.$$.log &
        _lxc_name_and_ip_get /tmp/packager.eph.$$.log
        rm /tmp/packager.eph.$$.log
    fi

    _wait_ssh
    set +e
    _prodtest_innervm_run "$branch_id"
    inner_ret=$?

    copy_common
    copy_prod

    if [ $inner_ret != 0 ]; then
        # cleanup in error case
        :
    fi

    if [ "$LXC_DESTROY" = "true" ]; then
        sudo $LXC_TERM -n $lxc_name
    fi

    set -e

    return $inner_ret
}

copy_common () {
    _copy_from "ssh.log" "out/${ACTION}_ssh_history.log" || true
}

copy_prod () {
    _copy_from "/var/log/apache2/access.log" "out/prod_apache2_access.log" || true
    _copy_from "/var/log/apache2/error.log" "out/prod_apache2_error.log" || true
    _copy_from "prod_*.png" "out/" || true
    _copy_from "xunit-platform-prod.xml" "out/" || true
}

#
#  sig_hand - manages cleanup if the build is aborted
#
sig_hand () {
    trap ERR SIGINT SIGTERM
    echo "signal trapped"
    if [ "$lxc_name" != "" ]; then
        set +e

        copy_common
        copy_prod

        echo "Destroying [$lxc_name] lxc"
        if [ "$LXC_DESTROY" = "true" ]; then
            sudo $LXC_KILL -n $lxc_name
        fi
    fi
    if [ -f /tmp/packager.eph.$$.log ]; then
        rm /tmp/packager.eph.$$.log
    fi
}


#
#  MAIN
#
BUILD_FLAGS=""

trap sig_hand SIGINT SIGTERM
trap sig_hand ERR

# create folder to save logs
if [ ! -d "out" ]; then
    mkdir "out"
fi

#  args management
while [ $# -gt 0 ]; do
    case $1 in
        prodtest)
            ACTION="$1"
            prodtest_run $(echo "$2" | sed 's@.*/@@g')
            break
            ;;
        *)
            usage 1
            break
            ;;
    esac
    BUILD_FLAGS="$BUILD_FLAGS $1"
    shift
done

exit 0

