#!/usr/bin/env python
import unittest
# import time

from openquake.taxonomy.test import pla


class TaxonomyAllTest(unittest.TestCase):

    def linktop_test(self):

        pla.get('')

        linktop = pla.xpath_finduniq(
            "//a[normalize-space(text())='Calculate']",
            100, 1)
        linktop.click()

        pla.wait_new_page(linktop, 'https://platform.openquake.org/'
                                   'calculate', timeout=10)


    def search_test(self):
        
        pla.get('index.php/component/search')

        varsearch = 'Assembly [ASS]'

        search_field = pla.xpath_finduniq(
            "//input[@id='search-searchword' and @type='text']")
        search_field.send_keys(varsearch)
        
        submit_button_search = pla.xpath_finduniq(
              "//button[@name='Search']")
        submit_button_search.click()

        pla.wait_new_page(submit_button_search, 'index.php/component/search/'
                                                '?searchword=Assembly%20[ASS]'
                                                '&ordering=newest&searchphrase'
                                                '=all', timeout=5)

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
                                    '-grade--hf', timeout=5)

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

        pla.wait_new_page(submit_login, 'index.php/component/users/'
                                        'profile', timeout=10)

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

    def insert_test(self):

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
