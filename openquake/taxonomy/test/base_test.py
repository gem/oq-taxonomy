#!/usr/bin/env python
import unittest
# import time

from openquake.taxonomy.test import pla


class TaxonomyIniTest(unittest.TestCase):

    # tout = 5

    def setUp(self):
        user_field = pla.xpath_finduniq(
           "//input[@id='modlgn-username' and @type='text' and"
           " @name='username']")
        user_field.send_keys(pla.user)

        pwd_field = pla.xpath_finduniq(
            "//input[@id='modlgn-passwd' and @type='password' and"
            " @name='password']")
        pwd_field.send_keys(pla.passwd)

        submit_button = pla.xpath_finduniq(
            "//button[@type='submit' and text()='Log in']")
        pla.wait_visibility(submit_button, 10)
        submit_button.click()

    def tearDown(self):
        submit_logout = pla.xpath_finduniq(
            "//input[@type='submit' and @name='Submit' and"
            " @value='Log out']")
        submit_logout.click()

        # time.sleep(self.tout)

class TaxonomyAllTest(unittest.TestCase):

    # tout = 5

    def usrn_test(self):

        pla.get('')

        forgot = pla.xpath_finduniq(
            "//a[normalize-space(text())='Forgot your username?']",
            100, 1)
        forgot.click()

        email_field = pla.xpath_finduniq(
            "//input[@id='jform_email' and @type='email' and"
            " @name='jform[email]']")
        email_field.send_keys(pla.email)

        submit_button = pla.xpath_finduniq(
            "//button[@type='submit' and text()='Submit']")
        submit_button.click()

    def submit_newterm_test(self):
        # toutt = 10
        exx = 'example'

        pla.get('')

        ins_link = pla.xpath_finduniq(
            "//a[normalize-space(text())='Submit new term']",
            100, 1)
        ins_link.click()

        pla.wait_new_page(ins_link, '/index.php/submit-an-article')

        # time.sleep(self.toutt)

        insert_title_field = pla.xpath_finduniq(
            "//input[@id='jform_title' and @type='text' and"
            " @name='jform[title]']")
        insert_title_field.send_keys(exx)

    def content_test(self):

        letterlink = pla.xpath_finduniq(
            "//a[normalize-space(text())='H']")
        letterlink.click()

        pla.wait_new_page(letterlink, '?cat=h')

        termlink = pla.xpath_finduniq(
            "//a[normalize-space(text())='Height of ground"
            " floor level above grade [HF]']")
        termlink.click()

        pla.wait_new_page(termlink, 'terms/height-of-ground-floor-level-above'
            '-grade--hf')

        img = pla.xpath_finduniq(
            "//img[@alt='HF_diagram_-_1']")

        self.assertEqual(pla.driver.execute_script(
            "return arguments[0].complete && typeof"
            " arguments[0].naturalWidth"
            "  != \"undefined\" && arguments[0].naturalWidth > 0", img), True)

        # time.sleep(self.tout)

        intlink = pla.xpath_finduniq(
            "//a[@class='internal-link']")
        intlink.click()

        # time.sleep(self.tout)

        pla.xpath_finduniq(
            "//h2[@itemprop='headline']")
