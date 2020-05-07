import mysql.connector as mysql

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
    "super, possible_het, het, visual, possible_other, normal_other, type) VALUES"
    " (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)")
    
    # executing the query with a row
    cursor.execute(query, values)

    # save to db
    db.commit()