#!/usr/bin/python3

import sys
import os
import uuid
import re
import csv
import re
from shutil import copyfile

from time import sleep

import mysql.connector

csv_file = open('inventory.csv', mode='w', newline='\r')
fieldnames = ['Handle', 'Title', 'Body (HTML)', 'Vendor', 'Type', 'Tags', 'Published',
                'Option1 Name', 'Option1 Value', 'Option2 Name', 'Option2 Value', 'Option3 Name', 'Option3 Value',
                'Variant SKU', 'Variant Grams', 'Variant Inventory Tracker', 'Variant Inventory Qty', 'Variant Inventory Policy',
                'Variant Fulfillment Service', 'Variant Price', 'Variant Compare at Price', 'Variant Requires Shipping', 'Variant Taxable',
                'Variant Barcode', 'Image Src', 'Image Position', 'Image Alt Text',
                'Gift Card', 'SEO Title', 'SEO Description', 'Variant Image', 'Variant Weight Unit', 'Variant Tax Code SHOPIFY Plus', 'Cost Per Item']
writer = csv.DictWriter(csv_file, fieldnames=fieldnames)

writer.writeheader()


cnx = mysql.connector.connect(user='root', password='passme123', database='motionreptiles')
cursor = cnx.cursor(dictionary=True)

sql = "SELECT images,mm_id,a_id,snake_title,snake_price,sex,dob_MM,dob_DD,dob_YY FROM mm_inventory WHERE date(timestamp)='2021-01-23'"

cursor.execute(sql)

results = cursor.fetchall()

#count = 1
for row in results:
    #if count == 5:
    #    break

    images = row['images']
    mm_id = row['mm_id']
    a_id = row['a_id']
    snake_title = row['snake_title']
    snake_price = row['snake_price']
    snake_price = snake_price.replace('$', '')
    sex = row['sex']
    dob_MM = row['dob_MM']
    dob_DD = row['dob_DD']
    dob_YY = row['dob_YY']

    dob = dob_MM + '/' + dob_DD + '/' + dob_YY
    sex = sex.capitalize()

    regex = r"([0-9A-z-_]+\.jpg)"
    images = re.finditer(regex, images)
    image_position = 1

    for image in images:
        image_name = image.group()

        if image_position == 1:
            writer.writerow(
                    {
                        'Handle': a_id,
                        'Title': snake_title,
                        'Body (HTML)': '',
                        'Vendor': 'Motion Reptiles',
                        'Type': '',
                        'Tags': '',
                        'Published': 'TRUE',
                        'Option1 Name': 'Sex',
                        'Option1 Value': sex,
                        'Option2 Name': 'DOB',
                        'Option2 Value': dob,
                        'Option3 Name': '',
                        'Option3 Value': '',
                        'Variant SKU': a_id,
                        'Variant Grams': '0',
                        'Variant Inventory Tracker': 'shopify',
                        'Variant Inventory Qty': '1',
                        'Variant Inventory Policy': 'continue',
                        'Variant Fulfillment Service': 'manual',
                        'Variant Price': snake_price,
                        'Variant Compare at Price': snake_price,
                        'Variant Requires Shipping': 'TRUE',
                        'Variant Taxable': 'FALSE',
                        'Variant Barcode': a_id,
                        'Image Src': 'http://files.motiontradingcorp.com/' + image_name,
                        'Image Position': image_position,
                        'Image Alt Text': snake_title,
                        'Gift Card': 'FALSE',
                        'SEO Title': snake_title,
                        'SEO Description': snake_title,
                        'Variant Image': '',
                        'Variant Weight Unit': '',
                        'Variant Tax Code SHOPIFY Plus': '',
                        'Cost Per Item': snake_price
                    }
                    )
        else:
            writer.writerow(
                    {
                        'Handle': a_id,
                        'Title': '',
                        'Body (HTML)': '',
                        'Vendor': '',
                        'Type': '',
                        'Tags': '',
                        'Published': '',
                        'Option1 Name': '',
                        'Option1 Value': '',
                        'Option2 Name': '',
                        'Option2 Value': '',
                        'Option3 Name': '',
                        'Option3 Value': '',
                        'Variant SKU': '',
                        'Variant Grams': '',
                        'Variant Inventory Tracker': '',
                        'Variant Inventory Qty': '',
                        'Variant Inventory Policy': '',
                        'Variant Fulfillment Service': '',
                        'Variant Price': '',
                        'Variant Compare at Price': '',
                        'Variant Requires Shipping': '',
                        'Variant Taxable': '',
                        'Variant Barcode': '',
                        'Image Src': 'http://files.motiontradingcorp.com/' + image_name,
                        'Image Position': image_position,
                        'Image Alt Text': '',
                        'Gift Card': '',
                        'SEO Title': '',
                        'SEO Description': '',
                        'Variant Image': '',
                        'Variant Weight Unit': '',
                        'Variant Tax Code SHOPIFY Plus': '',
                        'Cost Per Item': ''
                    }
                    )

        image_position = image_position + 1

        image_file_src = '../images/' + mm_id + '/' + image_name
        image_file_dst = './images/' + image_name
        copyfile(image_file_src, image_file_dst)

    #count = count + 1

