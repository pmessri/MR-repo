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

sql = "SELECT * FROM morphmarket WHERE status='Disable'"
#sql = "SELECT id, traits_html FROM morphmarket WHERE status='Enable'"

cursor.execute(sql)

results = cursor.fetchall()

for row in results:
    db_id = row['id']
    traits_html = row['traits_html']

    traits_html = traits_html.replace('<span class="close-sym">×</span>', '{X} ')

    soup = BeautifulSoup(traits_html, "html.parser")
    traits_text = soup.get_text()

    traits_text = traits_text.strip()

    traits = traits_text.split('{X}')

    for trait in traits:
        if trait:
            trait = trait.strip()

            sql_insert = "INSERT INTO traits(mm_id, trait) VALUES(%(mm_id)s, %(trait)s)"
            data_insert = {
                        'mm_id': db_id,
                        'trait': trait
                    }
            cursor2 = cnx.cursor()
            cursor2.execute(sql_insert, data_insert)
            cnx.commit()

            print(db_id,"->",trait)
    print("")
