import os

from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException, TimeoutException
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait
from time import sleep

from .conf.config import wait_time_settings
# from .conf import config

# main class of browser
class Browser:
    def __init__(self, has_screen):
        dir_path = os.path.dirname(os.path.realpath(__file__))
        service_args = ["--ignore-ssl-errors=true"]
        chrome_options = Options()
        if not has_screen:
            chrome_options.add_argument("--headless")
        chrome_options.add_argument("--start-maximized")
        chrome_options.add_argument("--no-sandbox")
        self.driver = webdriver.Chrome(
            executable_path="%s/bin/chromedriver" % dir_path,
            service_args=service_args,
            chrome_options=chrome_options,
        )
        # self.driver.implicitly_wait(wait_time_settings['PAGE_WAIT_TIME'])
        sleep(wait_time_settings['PAGE_WAIT_TIME'])

    #get page height
    @property
    def page_height(self):
        return self.driver.execute_script("return document.body.scrollHeight")

    def get(self, url):
        self.driver.get(url)

    @property
    def current_url(self):
        return self.driver.current_url

    # sleep implemented using selenium
    def implicitly_wait(self, t):
        self.driver.implicitly_wait(t)

    #get one element from given CSS selector
    def find_one(self, css_selector, elem=None, waittime=0):
        obj = elem or self.driver

        if waittime:
            WebDriverWait(obj, waittime).until(
                EC.presence_of_element_located((By.CSS_SELECTOR, css_selector))
            )

        try:
            return obj.find_element(By.CSS_SELECTOR, css_selector)
        except NoSuchElementException:
            return None

    #get all elements from given CSS selector
    def find(self, css_selector, elem=None, waittime=0):
        obj = elem or self.driver

        try:
            if waittime:
                WebDriverWait(obj, waittime).until(
                    EC.presence_of_element_located((By.CSS_SELECTOR, css_selector))
                )
        except TimeoutException:
            return None

        try:
            return obj.find_elements(By.CSS_SELECTOR, css_selector)
        except NoSuchElementException:
            return None

    # scroll down the page
    def scroll_down(self):
        self.driver.execute_script("window.scrollTo(0, document.body.scrollHeight)")
        sleep(wait_time_settings['PAGE_WAIT_TIME'])

    # click on given element using javascript
    def js_click(self, elem):
        self.driver.execute_script("arguments[0].click();", elem)

    # remove the given element using javascript
    def remove_element(self, elem):
        self.driver.execute_script("var element = arguments[0]; element.parentNode.removeChild(element);", elem)

    # refresh page
    def refresh_page(self):
        self.driver.refresh()

    def __del__(self):
        try:
            self.driver.quit()
        except Exception:
            pass
