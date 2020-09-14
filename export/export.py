#!/usr/bin/python3

import sys
import os
import uuid
import re
import csv

from time import sleep

import mysql.connector

from bs4 import BeautifulSoup


cnx = mysql.connector.connect(user='root', password='passme123', database='motionreptiles')
cursor = cnx.cursor(dictionary=True)

sql = "SELECT images,mm_id,a_id,snake_title,snake_price,sex,dob_MM,dob_DD,dob_YY FROM mm_inventory WHERE date(timestamp)='2020-09-12'"

cursor.execute(sql)

results = cursor.fetchall()

for row in results:
    images = row['images']
    mm_id = row['mm_id']
    a_id = row['a_id']
    snake_title = row['snake_title']
    snake_price = row['snake_price']
    sex = row['sex']
    dob_MM = row['dob_MM']
    dob_DD = row['dob_DD']
    dob_YY = row['dob_YY']

    print(images)
    print(a_id)
    
