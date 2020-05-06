#!/usr/bin/python3

import os
import uuid
import re
import csv

from time import sleep

import mysql.connector

from bs4 import BeautifulSoup


cnx = mysql.connector.connect(user='root', password='passme123', database='motionreptiles')
cursor = cnx.cursor(dictionary=True)

sql = "SELECT * FROM morphmarket WHERE status='Enable'"
cursor.execute(sql)

results = cursor.fetchall()

for row in results:
    soup = BeautifulSoup(row['analytics_html'])
    analytics_text = soup.get_text()
    
