#!/usr/bin/env python
import unittest

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
                                   'calculate', timeout=10)

    def search_test(self):
        # pla.get(
        #         'index.php/component/search/'
        #         '?searchword=&searchphrase=all&Itemid=101'
        #         )

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

        pla.wait_new_page(search_term, 'terms/assembly-ass', timeout=5)

    def content_test(self):

        pla.get('')

        letterlink = pla.xpath_finduniq(
            "//div[normalize-space(text())='H']")
        letterlink.click()

        pla.wait_new_page(letterlink, '?cat=h', timeout=5)

        termlink = pla.xpath_finduniq(
            "//a[normalize-space(text())='Height of ground"
            " floor level above grade [HF]']")
        termlink.click()

        pla.wait_new_page(termlink, 'terms/height-of-ground-floor-level-above'
                                    '-grade-hf', timeout=5)

        img = pla.xpath_finduniq(
            "//img[@alt='HF_diagram_-_1']")

        self.assertEqual(pla.driver.execute_script(
            "return arguments[0].complete && typeof"
            " arguments[0].naturalWidth"
            "  != \"undefined\" && arguments[0].naturalWidth > 0", img), True)

        intlink = pla.xpath_finduniq(
            "//a[@class='internal-link']")
        intlink.click()

        pla.xpath_finduniq(
            "//h2[@itemprop='headline' and @id='Ground floor']")

    def mono_alias_test(self):

        pla.get('')

        mono_alias_letterlink = pla.xpath_finduniq(
            "//div[normalize-space(text())='F']")
        mono_alias_letterlink.click()

        pla.wait_new_page(mono_alias_letterlink, '?cat=f', timeout=5)

        mono_alias_termlink = pla.xpath_finduniq(
            "//a[normalize-space(text())='Floor']")
        mono_alias_termlink.click()

        pla.wait_new_page(mono_alias_termlink, 'terms/floor', timeout=5)


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

        pla.wait_new_page(login, 'index.php/component/users/'
                                 '?view=login', timeout=5)

        user_field = pla.xpath_finduniq(
            "//input[@id='username' and @type='text' and"
            " @name='username']")
        user_field.send_keys(pla.user)

        pwd_field = pla.xpath_finduniq(
            "//input[@id='password' and @type='password' and"
            " @name='password']")
        pwd_field.send_keys(pla.passwd)

        submit_login = pla.xpath_finduniq(
            "//button[@type='submit']")
        submit_login.click()

        # pla.wait_new_page(submit_login, 'index.php/component/users/'
        #                                 '?view=login&Itemid=101', timeout=10)
        #                                 # 'profile?Itemid=101', timeout=10)

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

    def new_insert_test(self):

        pla.get('')

        exex = 'term example'

        submit_termlink = pla.xpath_finduniq(
            "//a[normalize-space(text())='New definition']")
        submit_termlink.click()

        pla.wait_new_page(submit_termlink, 'index.php/submit-an-article',
                                           timeout=5)

        insert_title_field = pla.xpath_finduniq(
            "//input[@id='jform_title' and @type='text' and"
            " @name='jform[title]']")
        insert_title_field.send_keys(exex)

    def alias_test(self):
        # check input Alias
        new_term()
        alias = pla.xpath_find_base(
            "//input[@id='jform_alias'"
            " and @placeholder='Auto-generate from title']")
        if len(alias) > 0:
            raise ValueError('Tag input Alias must be not present')

    def tab_metadata_test(self):
        # check tab Metadata
        new_term()
        metadata = pla.xpath_find_base(
            "//a[normalize-space(text())='Metadata']")
        if len(metadata) > 0:
            raise ValueError('Tab Metadata must be not present')

    def tab_publishing_test(self):
        # check tab Publishing
        new_term()
        language = pla.xpath_find_base(
            "//a[normalize-space(text())='Language']")
        if len(language) > 0:
            raise ValueError('Tab Language must be not present')


class TaxonomyAdminTest(unittest.TestCase):

    def login_test(self):
        pla.get('administrator')

        # login
        admin_field = pla.xpath_finduniq(
            "//input[@id='mod-login-username' and @type='text' and"
            " @name='username']")
        admin_field.send_keys(pla.user)

        admin_field = pla.xpath_finduniq(
            "//input[@id='mod-login-password' and @type='password' and"
            " @name='passwd']")
        admin_field.send_keys(pla.passwd)

        submit_login_admin = pla.xpath_finduniq(
            "//button[@class='btn btn-primary btn-block btn-large"
            " login-button']")
        submit_login_admin.click()

        # go to list articles from menu
        cont_menu = pla.xpath_finduniq(
            "//a[@class='dropdown-toggle'"
            " and normalize-space(text())='Content']")
        cont_menu.click()

        art_menu = pla.xpath_finduniq(
            "//a[@class='dropdown-toggle menu-article'"
            " and normalize-space(text())='Articles']")
        art_menu.click()

        pla.xpath_findfirst(
            "//a[@class='hasTooltip'"
            " and normalize-space(text())='Infilled Frame']")
