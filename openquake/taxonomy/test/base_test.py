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

        try:
            cookie = pla.xpath_finduniq(
                "//a[@id='cookiehintsubmit']",
                100, 1)
            cookie.click()
        except:
            continue

        letterlink = pla.xpath_finduniq(
            "//a[@class='let-cat mh' and @href='?cat=h']")
        letterlink.click()

        pla.wait_new_page(letterlink, '/?cat=h', timeout=5)

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


class TaxonomyInOutTest(unittest.TestCase):

    @classmethod
    def setUpClass(cls):

        pla.get('')

        login = pla.xpath_finduniq(
            "//a[normalize-space(text())='Contribute']",
            100, 1)
        login.click()

        # pla.wait_new_page(login, 'index.php/component/users/'
        #                          '?view=login', timeout=5)

        user_field = pla.xpath_finduniq(
            "//input[@id='username' and @type='text' and"
            " @name='username']")
        # user_field.send_keys(pla.user)

        pwd_field = pla.xpath_finduniq(
            "//input[@id='password' and @type='password' and"
            " @name='password']")
        # pwd_field.send_keys(pla.passwd)

        submit_login = pla.xpath_finduniq(
            "//button[@type='submit']")
        # submit_login.click()


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
