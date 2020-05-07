#!/usr/bin/python3

import os
import uuid
import re
import csv

from time import sleep

import mysql.connector

from bs4 import BeautifulSoup

import urllib.request

from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException, TimeoutException
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support.select import Select

filename = 'input/inventory.csv'

mm_url_login = 'https://www.morphmarket.com/accounts/login/'

service_args = ["--ignore-ssl-errors=true"]
chrome_options = Options()
#chrome_options.add_argument("--headless")
chrome_options.add_argument("--start-maximized")
chrome_options.add_argument("--no-sandbox")
driver = webdriver.Chrome(
    executable_path="/usr/bin/chromedriver",
    service_args=service_args,
    chrome_options=chrome_options,
)
driver.implicitly_wait(5)

# login
driver.get(mm_url_login)
driver.find_element_by_xpath('//*[@id="id_login"]').send_keys('motionreptiles')
driver.find_element_by_xpath('//*[@id="id_password"]').send_keys('Iammotion-128128128')
driver.find_element_by_class_name('primaryAction').click()
sleep(1)

