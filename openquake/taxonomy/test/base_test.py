#!/usr/bin/env python
import unittest
import time

from openquake.taxonomy.test import pla

from nose import with_setup


class TaxonomyAllTest(unittest.TestCase):

    toutt = 50

    toutts = 5

    def InOut_test(self):
        pla.get('')

        user_field = pla.xpath_finduniq(
           "//input[@id='modlgn-username' and @type='text' and"
           " @name='username']")
        user_field.send_keys(pla.user)

        pwd_field = pla.xpath_finduniq(
            "//input[@id='modlgn-passwd' and @type='password' and"
            " @name='password']")
        pwd_field.send_keys(pla.passwd)

        submit_login = pla.xpath_finduniq(
            "//button[@type='submit' and text()='Log in']")
        submit_login.click()

        time.sleep(self.toutt)
        # pla.wait_new_page(submit_login, '/', timeout=50)

        pla.get('')

        # time.sleep(self.toutt)

        exex = 'term example'

        submit_termlink = pla.xpath_finduniq(
            "//a[@href='/index.php/submit-an-article' and"
            " normalize-space(text())='Submit new term']")
        submit_termlink.click()

        # pla.wait_new_page(submit_termlink, 'index.php/submit-an-article',
        # timeout=50)

        insert_title_field = pla.xpath_finduniq(
            "//input[@id='jform_title' and @type='text' and"
            " @name='jform[title]']")
        insert_title_field.send_keys(exex)

        submit_logout = pla.xpath_finduniq(
            "//input[@type='submit' and @name='Submit' and"
            " @value='Log out']")
        submit_logout.click()

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

    def newlog_test(self):
        exx = 'example'

        subnewlogin = pla.xpath_finduniq(
            "//button[@type='submit' and text()='Log in']")
        subnewlogin.click()

        # pla.wait_new_page(subnewlogin, "index.php/component/users/?view=login")

        # time.sleep(self.toutts)

        user_field = pla.xpath_finduniq(
            "//input[@id='username' and @type='text' and"
            " @name='username']")
        user_field.send_keys(exx)

    def content_test(self):
        # time.sleep(self.tout)
        pla.get('')

        letterlink = pla.xpath_finduniq(
            "//a[normalize-space(text())='H']")
        letterlink.click()

        # pla.wait_new_page(letterlink, '?cat=h', timeout=50)
        time.sleep(self.toutts)

        termlink = pla.xpath_finduniq(
            "//a[normalize-space(text())='Height of ground"
            " floor level above grade [HF]']")
        termlink.click()

        # pla.wait_new_page(termlink, 'terms/height-of-ground-floor-level-above'
        #    '-grade--hf', timeout=50)

        time.sleep(self.toutts)

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
            "//h2[@itemprop='headline']")


class TaxonomyInOutTest(unittest.TestCase):

    toutt = 50

    @classmethod
    def setUpClass(cls):

        pla.get('')

        user_field = pla.xpath_finduniq(
            "//input[@id='modlgn-username' and @type='text' and"
            " @name='username']")
        user_field.send_keys(pla.user)

        pwd_field = pla.xpath_finduniq(
            "//input[@id='modlgn-passwd' and @type='password' and"
            " @name='password']")
        pwd_field.send_keys(pla.passwd)

        submit_login = pla.xpath_finduniq(
            "//button[@type='submit' and text()='Log in']")
        submit_login.click()

        time.sleep(self.toutt)
        # pla.wait_new_page(submit_login, '/', timeout=50)

        # doc = open("/tmp/setup.txt", "w")
        # riga = "Setup"
        # doc.write(riga)
        # doc.close()

    @classmethod
    def tearDownClass(cls):

        # doc = open("/tmp/teardown.txt", "w")
        # riga = "Teardown"
        # doc.write(riga)
        # doc.close()
        submit_logout = pla.xpath_finduniq(
            "//input[@type='submit' and @name='Submit' and"
            " @value='Log out']")
        submit_logout.click()

    # @with_setup(my_setup, my_teardown)
    def insert_test(self):

        pla.get('')

        # time.sleep(self.toutt)

        exex = 'term example'

        submit_termlink = pla.xpath_finduniq(
            "//a[@href='/index.php/submit-an-article' and"
            " normalize-space(text())='Submit new term']")
        submit_termlink.click()

        # pla.wait_new_page(submit_termlink, 'index.php/submit-an-article',
        # timeout=50)

        insert_title_field = pla.xpath_finduniq(
            "//input[@id='jform_title' and @type='text' and"
            " @name='jform[title]']")
        insert_title_field.send_keys(exex)

        # time.sleep(self.toutte)

        # submit_button_insert = pla.xpath_finduniq(
        #    "//button[@type='button' and text()='Save']")
        # submit_button_insert.click()

        # time.sleep(self.toutt)
