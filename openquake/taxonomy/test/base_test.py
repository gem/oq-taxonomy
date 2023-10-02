#!/usr/bin/env python
import unittest
import requests
import time

from openquake.taxonomy.test import pla


class TaxonomyAllTest(unittest.TestCase):

    def cookie_test(self):
        pla.get('')

        cookie = pla.xpath_finduniq(
            "//a[@id='cookiehintsubmit']",
            100, 1)
        cookie.click()

    def linktop_test(self):
        pla.get('')

        linktop = pla.xpath_finduniq(
            "//a[normalize-space(text())='Calculate']",
            100, 1)
        linktop.click()

        pla.wait_new_page(linktop, 'https://platform.openquake.org/'
                                   'calculate/', timeout=10)
        time.sleep(50000)

    def search_test(self):
        pla.get('')

        varsearch = 'Assembly [ASS]'

        search_field = pla.xpath_finduniq(
            "//input[@id='q' and @type='text']")
        search_field.send_keys(varsearch)

        submit_but_search = pla.xpath_find_any(
            "//button[@name='Search']")
        submit_but_search[0].click()

        search_term = pla.xpath_finduniq(
            "//a[@href='/terms/assembly-ass?highlight=WyJhc3NlbWJseSIsImFzcyJd']")
        search_term.click()

    def content_test(self):
        pla.get('')

        letterlink = pla.xpath_finduniq(
            "//div[normalize-space(text())='H']")
        letterlink.click()

        termlink = pla.xpath_finduniq(
            "//a[normalize-space(text())='H-shape [PLFH]']")
        termlink.click()

        title_termlink = pla.xpath_finduniq(
            "//h1[normalize-space(text())='H-shape [PLFH]']")

        pla.get('')

        letterurl = pla.xpath_finduniq(
            "//div[normalize-space(text())='E']")
        letterurl.click()

        termlink = pla.xpath_finduniq(
            "//a[normalize-space(text())='Earth']")
        termlink.click()

        # hide cookie law
        header = pla.xpath_finduniq(
            "//div[@id='redim-cookiehint-bottom']")

        disp = 'none'

        jquery = requests.get("https://code.jquery.com/jquery-1.12.4.min.js").text
        pla.driver.execute_script(jquery)

        pla.driver.execute_script(
            "$(arguments[0]).attr('style','display:%s;')" % disp, header)

        intlink = pla.xpath_findfirst(
            "//a[@class='internal-link']")
        intlink.click()

        pla.xpath_finduniq(
            "//h1[normalize-space(text())='Earth, unknown reinforcement [E99]']")

    def mono_alias_test(self):
        pla.get('')

        mono_alias_letterlink = pla.xpath_finduniq(
            "//div[normalize-space(text())='F']")
        mono_alias_letterlink.click()

        mono_alias_termlink = pla.xpath_finduniq(
            "//a[normalize-space(text())='Fired clay']")
        mono_alias_termlink.click()

    def bulk_redirect_test(self):
        pla.get('')

        pla.get('/terms/CR')
        cr_redirect = pla.xpath_finduniq(
            "//h1[normalize-space(text())='Concrete, reinforced [CR]']",
            timeout=10)

        pla.get('/terms/CB99')
        cb99_redirect = pla.xpath_finduniq(
            "//h1[normalize-space(text())='Concrete blocks, unknown type [CB99]']",
            timeout=10)

def new_term():
    pla.get('')

    new_term = pla.xpath_finduniq(
        "//a[normalize-space(text())='New definition']")
    new_term.click()


class TaxonomyInOutTest(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        pla.get('')
        
        login = pla.xpath_finduniq(
            "//a[normalize-space(text())='Contribute']",
            100, 1)
        login.click()

        user_field = pla.xpath_finduniq(
            "//input[@id='username' and @type='text' and"
            " @name='username']")

        pwd_field = pla.xpath_finduniq(
            "//input[@id='password' and @type='password' and"
            " @name='password']")

        submit_login = pla.xpath_finduniq(
            "//button[@type='submit']")

    @classmethod
    def tearDownClass(cls):
        logout = pla.xpath_finduniq("//a[normalize-space(text())='Logout']",
                                    100, 1)
        logout.click()

        pla.wait_new_page(logout, 'index.php/component/users/?view='
                                  'login&Itemid=102', timeout=10)

        submit_logout = pla.xpath_finduniq(
            "//button[@type='submit']")
        submit_logout.click()


class TaxonomyAdminTest(unittest.TestCase):

    def login_test(self):
        pla.get('administrator')

        # login
        admin_field = pla.xpath_finduniq(
            "//input[@id='mod-login-username' and @type='text' and"
            " @name='username']")

        admin_field = pla.xpath_finduniq(
            "//input[@id='mod-login-password' and @type='password' and"
            " @name='passwd']")

        submit_login_admin = pla.xpath_finduniq(
            "//button[@id='btn-login-submit'"
            " and @class='btn btn-primary w-100 btn-lg']")

