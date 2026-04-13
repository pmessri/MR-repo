#!/usr/bin/python3

from operator import attrgetter, itemgetter
import json
import urllib.request
import os
import uuid
import csv

with open('data.json') as posts_file:
    data = json.load(posts_file)
    jstring = json.dumps(data, indent=4)

    i = 0
    for post_data in data:
        if 'likes' in post_data.keys():
            data[i]['likes'] = int(post_data['likes'])
            i = i + 1
        else:
            data[i]['likes'] = 1

    i = 0
    for post in data:
        if isinstance(post['likes'], str):
            data[i]['likes'] = int(post['likes'])
        else:
            pass

    i = 0
    for post in data:
        if isinstance(post['likes'], str):
            del data[i]
        else:
            pass
  
    
    try:
        data_sorted = sorted(data, key=lambda post : int(post['likes']) if 'likes' in post else '', reverse = True)
    except Exception as E:
        print(E)

    i = 0
    lis = []
    for post in data_sorted:
        if(i < 145):
            pass
        else:
            if 'likes' in post and 'caption' in post and 'date' in post and 'img_urls' in post:
                l = []
                l.append(i)
                l.append(post['likes'])
                l.append(post['caption'])
                l.append(post['date'])
                print(i)
                print(post['likes'])
                print(post['caption'])
                print(post['date'])
                print(len(post['img_urls']))
                os.makedirs("images/" + str(i), exist_ok=True)
                for img in post['img_urls']:
                    print('- ' + img)
                    filename = str(uuid.uuid4()) + ".jpg"
                    l.append(filename)
                    print('-----' + filename)
                    urllib.request.urlretrieve(img, "images/" + str(i) + "/" +  filename)
                print("----------------------------------------------------\n")
                lis.append(l)
                with open('./output.csv', 'a') as myfile:
                    wr = csv.writer(myfile, quoting=csv.QUOTE_ALL)
                    wr.writerow(l)
            if(i == 626):
                exit()
        i = i + 1

