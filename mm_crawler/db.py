import mysql.connector as mysql
import pymongo

def mysql_insert(values):

    db = mysql.connect(
        host = "localhost",
        user = "root",
        passwd = "secret",
        database = "mm_scrap"
    )

    cursor = db.cursor()

    # sql query
    query = ("INSERT INTO mm_details (gene_trait, gene_trait_url, normal,"
    "super, possible_het, het, visual, possible_other, normal_other, type, retrieved_at) VALUES"
    " (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)")
    
    # executing the query with a row
    cursor.execute(query, values)

    # save to db
    db.commit()

def mongo_insert(values):

    #connection
    client = pymongo.MongoClient("mongodb://localhost:27017/")
    #select database
    db = client["mm_scrap"]
    #select collection (table)
    collection = db["mm_details"]

    keys = [ 'gene_trait', 'gene_trait_url', 'normal', 'super', 'possible_het', 'het', 
            'visual', 'possible_other', 'normal_other', 'type', 'retrieved_at']

    dict_val = dict(zip(keys, values))

    #json of each row
    # print(dict_val)

    collection.insert_one(dict_val)