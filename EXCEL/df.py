#!/usr/bin/python3

import datetime

import pandas as pd 

pd.set_option("display.max_rows", None, "display.max_columns", None)

df = pd.read_excel('XLSX-output.xlsx', index_col=0)

#print(df.columns)

#for c in df.columns:
    #print(df[c].size) //12
    

#print(df.head(20)) //head of 20 rows with column headers

#print(df.columns) //list of column names
#print(df.shape) //the shape by counts of the dataframe

#for i,j in df.iterrows():
#    print("i %s: j %s" % i, j)

dayofweek = {'0':0, '1':0, '2':0, '3':0, '4':0, '5':0, '6':0}

dayofweek['2'] = dayofweek['2'] + 1

for i, row in df.iterrows():
    print(row['like_count'])
    print(row['date'])

    dayofwk = row['date'].dayofweek
    dayofwk = str(dayofwk)

    dayofweek[dayofwk] = dayofweek[dayofwk] + 1
    #dayofweek[row['date'].dayofweek] = dayofweek[row['date'].dayofweek] + 1

    print('----')

#dayofweek = sorted(dayofweek.iteritems(), key = lambda x: int(x[1]))
dayofweek_sorted = sorted(dayofweek.items(), key = lambda x: x[1])

day_of_week = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']

for x, y in dayofweek_sorted:
    print(day_of_week[int(x)], y)

print('----')

for k,v in dayofweek.items():
    print(k, v)

exit()


