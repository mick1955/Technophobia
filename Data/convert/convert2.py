
import sys
import csv

import mysql.connector

from getpass import getpass

DB_NAME = 'topics'

# txt1 = "Creating {DB_NAME} database (if necessary)".format(DB_NAME = 'topics')

# print(txt1)


def main():
    conn = mysql.connector.connect(user='user1', password='Qrfa1241',
                            host='127.0.0.1',
                            database='topics')

    cursor = conn.cursor()

    try:
        cursor.execute("USE {}".format(DB_NAME))
    except mysql.connector.Error as err:
        print("Database {} does not exist.".format(DB_NAME))
        if err.errno == errorcode.ER_BAD_DB_ERROR:
            create_database(cursor)
            print("Database {} created successfully.".format(DB_NAME))
            conn.database = DB_NAME
        else:
            print(err)
            exit(1)


def create_database(cursor):
    # try:ls
    #     cursor.execute(
    #         "CREATE DATABASE IF NOT EXISTS {} DEFAULT CHARACTER SET 'utf8'".format(DB_NAME))
    # except mysql.connector.Error as err:
    #     print("Failed creating database: {}".format(err))
    #     exit(1)

    try:
        cursor.execute("USE {}".format(DB_NAME))
    except mysql.connector.Error as err:
        print("Database {} does not exists.".format(DB_NAME))
        if err.errno == errorcode.ER_BAD_DB_ERROR:
            create_database(cursor)
            print("Database {} created successfully.".format(DB_NAME))
            conn.database = DB_NAME
        else:
            print(err)
            exit(1)

if __name__ == "__main__":
    main()

    # TABLES = {}
    # TABLES['topic'] = (
    # "CREATE TABLE `topic` ("
    # "  `topicID` int(11) NOT NULL AUTO_INCREMENT,"
    # "  `topicName` varchar(16) NOT NULL,"
    # "  `topicDescription` varchar(32) NOT NULL,"
    # "  PRIMARY KEY (`emp_no`)"
    # ") ENGINE=InnoDB")

    # file = "/Users/moyer/Technophobia/Data/csv/contentlist.csv"

    # conn = mysql.connector.connect(user='user1', password='Qrfa1241',
    #                           host='127.0.0.1',
    #                           database='Topic')
    
    # cursor = conn.cursor()

    # try:
    #     cursor.execute(
    #         "CREATE DATABASE IF NOT EXISTS Topic2 DEFAULT CHARACTER SET 'utf8'")
    #     for table_name in TABLES:
    #         table_description = TABLES[table_name]
    #         try:
    #             print("Creating table {}: ".format(table_name), end='')
    #             cursor.execute(table_description)
    #         except mysql.connector.Error as err:
    #             if err.errno == errorcode.ER_TABLE_EXISTS_ERROR:
    #                 print("already exists.")
    #             else:
    #                 print(err.msg)
    #         else:
    #             print("OK")

    # cursor.close()
    # cnx.close()

    # except mysql.connector.Error as err:
    #     print("Failed creating database: {}".format(err))
    #     exit(1)





# def loadfile(file):

#     with open(file, newline='', encoding="ISO-8859-1") as csv_file:
#         reader = csv.reader(csv_file)
#         for row in reader:

#             topic_name = row[1]
#             topic_description = row[2]

#             topic_name = topic_name.replace('"', '')
#             topic_description = topic_description.replace('"', '')

#             print("INSERT INTO Topic VALUES ('NULL','" + topic_name + "' ," + topic_description + "'");
