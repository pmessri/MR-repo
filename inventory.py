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

cnx = mysql.connector.connect(user='root', password='passme123', database='motionreptiles')
cursor = cnx.cursor(dictionary=True)

def db_mark_disabled():
    cursor.execute("UPDATE mm_inventory SET status='Disable'");
    cnx.commit();

def get_latest_tag_increase():
    cursor.execute("SELECT * FROM mm_inventory ORDER BY id DESC LIMIT 1");
    row = cursor.fetchone()
    tag = row['tag']
    matches = re.search('run:([0-9]+)', tag)
    tag_match = matches[1]
    tag_integer = int(tag_match)
    tag_integer += 1
    tag_string = str(tag_integer)
    tag_string = tag_string.zfill(4)
    tag_string = "run:" + tag_string
    return tag_string

db_mark_disabled()

filename = '/home/peter/Desktop/mm-inventory/input/inventory.csv'

# ex: https://www.morphmarket.com/inventory/edit/219181?list_page=1
mm_url_part1 = 'https://www.morphmarket.com/inventory/edit/'
mm_url_part2 = '?list_page=1'

mm_url_login = 'https://www.morphmarket.com/accounts/login/'

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
driver.implicitly_wait(10)

# login
driver.get(mm_url_login)
driver.find_element_by_xpath('//*[@id="id_login"]').send_keys('motionreptiles')
driver.find_element_by_xpath('//*[@id="id_password"]').send_keys('Iammotion-128128128')
driver.find_element_by_class_name('primaryAction').click()
sleep(1)

with open(filename, 'r') as csv_file:
    reader = csv.DictReader(csv_file)
    rows = list(reader)

tag_string = get_latest_tag_increase()

for row in rows:
    mm_id = int(row['Mmid'])
    if isinstance(mm_id, int):
        snake_title = row['Title']
        snake_internal_id = row['Id']
        snake_price = row['Price']

        snake_url = str(mm_url_part1) + str(mm_id) + str(mm_url_part2)

        print("----------------------------------------------------------------------------------------------")
        print("mm_id: " + str(mm_id))
        print("snake_title: " + snake_title)
        print("snake_internal_id: " + snake_internal_id)
        print("snake_url: " + snake_url)
        print("\n")

        driver.get(snake_url)

        quantity =                          driver.find_element_by_xpath('//*[//form[@id="edit-form"]][@id="id_quantity"]').get_attribute('value')
        title =                             driver.find_element_by_xpath('//*[//form[@id="edit-form"]][@id="id_title"]').get_attribute('value')
        a_id =                              driver.find_element_by_xpath('//*[//form[@id="edit-form"]][@id="id_serial"]').get_attribute('value')
        traits_html =                       driver.find_element_by_class_name('added-traits-wrapper').get_attribute('innerHTML')

        sex_select =                        Select(driver.find_elements_by_xpath('//*[//form[@id="edit-form"]][@id="id_sex"]')[1])
        sex_selected_option =               sex_select.first_selected_option
        sex =                               sex_selected_option.text

        maturity_select =                   Select(driver.find_elements_by_xpath('//*[//form[@id="edit-form"]][@id="id_maturity"]')[1])
        maturity_selected_option =          maturity_select.first_selected_option
        maturity =                          maturity_selected_option.text

        proven_breeder_select =             Select(driver.find_element_by_xpath('//*[//form[@id="edit-form"]][@id="id_proven_breeder"]'))
        proven_breeder_selected_option =    proven_breeder_select.first_selected_option
        proven_breeder =                    proven_breeder_selected_option.text

        price =                             driver.find_element_by_xpath('//*[//form[@id="edit-form"]][@id="id_price_0"]').get_attribute('value')

        dob_MM_select =                     Select(driver.find_element_by_xpath('//*[//form[@id="edit-form"]][@id="id_dob_month"]'))
        dob_MM_selected_option =            dob_MM_select.first_selected_option
        dob_MM =                            dob_MM_selected_option.text

        dob_DD_select =                     Select(driver.find_element_by_xpath('//*[//form[@id="edit-form"]][@id="id_dob_day"]'))
        dob_DD_selected_option =            dob_DD_select.first_selected_option
        dob_DD =                            dob_DD_selected_option.text

        dob_YY_select =                     Select(driver.find_element_by_xpath('//*[//form[@id="edit-form"]][@id="id_dob_year"]'))
        dob_YY_selected_option =            dob_YY_select.first_selected_option
        dob_YY =                            dob_YY_selected_option.text

        diet_prey_state_select =            Select(driver.find_element_by_xpath('//*[//form[@id="edit-form"]][@id="id_prey_state"]'))
        diet_prey_state_selected_option =   diet_prey_state_select.first_selected_option
        diet_prey_state =                   diet_prey_state_selected_option.text

        diet_prey_food_select =             Select(driver.find_element_by_xpath('//*[//form[@id="edit-form"]][@id="id_prey_food"]'))
        diet_prey_food_selected_option =    diet_prey_food_select.first_selected_option
        diet_prey_food =                    diet_prey_food_selected_option.text

        description =                       driver.find_element_by_xpath('//*[//form[@id="edit-form"]][@id="id_desc"]').get_attribute('value')

        negotiation_select =                Select(driver.find_element_by_xpath('//*[//form[@id="edit-form"]][@id="id_price_flexibility"]'))
        negotiation_selected_option =       negotiation_select.first_selected_option
        negotiation =                       negotiation_selected_option.text

        trades_select =                     Select(driver.find_element_by_xpath('//*[//form[@id="edit-form"]][@id="id_accept_trades"]'))
        trades_selected_option =            trades_select.first_selected_option
        trades =                            trades_selected_option.text

        availability_select =               Select(driver.find_element_by_xpath('//*[//form[@id="edit-form"]][@id="id_state"]'))
        availability_selected_option =      availability_select.first_selected_option
        availability =                      availability_selected_option.text

        analytics_html =    driver.find_element_by_xpath('//*[@class="alert alert-info row"]').get_attribute('innerHTML')

        html_page =                         driver.page_source

        soup = BeautifulSoup(html_page, features="html.parser")
        images = soup.find_all('img', id = re.compile('thumb-[2-9]'))
        directory = "images/" + str(mm_id)
        count = 0
        images_urls = []
        for i in images:
            os.makedirs(directory, exist_ok=True)
            filename = str(count) + "_" + str(uuid.uuid4()) + ".jpg"
            filename_directory = directory + "/" + filename
            images_urls.append(filename)
            urllib.request.urlretrieve(i['src'], filename_directory)
            count += 1

        insert_snake = ("INSERT INTO mm_inventory"
                        "(status, mm_id, images_html, images, snake_title, snake_internal_id, snake_price, snake_url, "
                          "quantity, a_id, traits_html, sex, maturity, proven_breeder, price, "
                          "dob_MM, dob_DD, dob_YY, diet_prey_state, diet_prey_food, "
                          "description, negotiation, trades, availability, analytics_html, tag) "
                        "VALUES "
                         "(%(status)s, %(mm_id)s, %(images_html)s, %(images)s, %(snake_title)s, %(snake_internal_id)s, %(snake_price)s, %(snake_url)s, "
                         "%(quantity)s, %(a_id)s, %(traits_html)s, %(sex)s, %(maturity)s, %(proven_breeder)s, %(price)s, "
                         "%(dob_MM)s, %(dob_DD)s, %(dob_YY)s, %(diet_prey_state)s, %(diet_prey_food)s, "
                          "%(description)s, %(negotiation)s, %(trades)s, %(availability)s, %(analytics_html)s, %(tag)s)"
                        )
        data_snake = {
                    'status':                   'Enable',
                    'mm_id':                    mm_id,
                    'images_html':              str(images),
                    'images':                   str(images_urls),
                    'snake_title':              snake_title,
                    'snake_internal_id':        snake_internal_id,
                    'snake_price':              snake_price,
                    'snake_url':                snake_url,
                    'quantity':                 quantity,
                    'a_id':                     a_id,
                    'traits_html':              traits_html,
                    'sex':                      sex,
                    'maturity':                 maturity,
                    'proven_breeder':           proven_breeder,
                    'price':                    price,
                    'dob_MM':                   dob_MM,
                    'dob_DD':                   dob_DD,
                    'dob_YY':                   dob_YY,
                    'diet_prey_state':          diet_prey_state,
                    'diet_prey_food':           diet_prey_food,
                    'description':              description,
                    'negotiation':              negotiation,
                    'trades':                   trades,
                    'availability':             availability,
                    'analytics_html':           analytics_html,
                    'tag':                      tag_string
                }

        cursor.execute(insert_snake, data_snake)
        cnx.commit()

        print("+++ Sleeping... and retrieving next snake.")

        sleep(1)

cursor.close()
cnx.close()
