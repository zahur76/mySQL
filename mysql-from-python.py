import os
import pymysql


username = os.getenv('C9_USER')

connection = pymysql.connect(host='localhost',
                            user=username,
                            password='',
                            db='Chinook')

try:
    with connection.cursor() as cursor:
        sql = "Select * from Artist;"
        cursor.execute(sql)
        result = cursor.fetchall()
        print(result)
finally:
    connection.close()
