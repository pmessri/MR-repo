#!/usr/bin/python3

import sys
import os
import uuid
import re
import csv
import time

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

mm_url_login = 'https://www.morphmarket.com/accounts/login/'
mm_url_inventory = 'https://www.morphmarket.com/us/c/reptiles?store=motionreptiles&epoch=20&page=1&sort=nfs&layout=list'

service_args = ["--ignore-ssl-errors=true"]
chrome_options = Options()
chrome_options.add_argument("--headless")
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

driver.get(mm_url_inventory)
sleep(1)

driver.get('https://www.morphmarket.com/stores/motionreptiles/export?format=csv')

sleep(1)

timestr = time.strftime("%m%d%Y-%H%M%S")

#downloaded_file = '/home/peter/Downloads/inventory.csv'
downloaded_file = '/home/peter/Desktop/mm-inventory/inventory.csv'
#cwd = os.getcwd()
path_root = '/home/peter/Desktop/mm-inventory'
path_to_new_file = path_root + '/input/inventory-' + timestr + '.csv'
path_to_symlink = path_root + '/input/inventory.csv'

try:
    os.unlink(path_to_symlink)
except:
    e = sys.exc_info()
    print(e)

try:
    os.rename(downloaded_file, path_to_new_file)
except:
    e = sys.exc_info()
    print(e)

try:
    os.symlink(path_to_new_file, path_to_symlink)
except:
    e = sys.exc_info()
    print(e)

#driver.quit()
