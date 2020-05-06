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

#sql = "SELECT * FROM morphmarket"
sql = "SELECT * FROM morphmarket WHERE status='Enable'"

cursor.execute(sql)

results = cursor.fetchall()

for row in results:
    db_id = row['id']
    analytics_html = row['analytics_html']

    soup = BeautifulSoup(analytics_html, "html.parser")
    analytics_text = soup.get_text()

    m = re.search(r'Impressions:\s+([0-9]+)\s+Clicks:\s+([0-9]+)\s+Inquiries:\s+([0-9]+)', analytics_text)

    if m:
        impressions = m[1]
        clicks = m[2]
        inquiries = m[3]

        update_data = {
                    'id':   db_id,
                    'impressions': impressions,
                    'clicks': clicks,
                    'inquiries': inquiries
                }

        sql_update = "UPDATE morphmarket SET impressions=%(impressions)s, clicks=%(clicks)s, inquiries=%(inquiries)s WHERE id=%(id)s"
        cursor2 = cnx.cursor()
        cursor2.execute(sql_update, update_data)
        cnx.commit()
        print("Updated: %s" % db_id)

    else:
        print("Didn't match analytics_html.")
