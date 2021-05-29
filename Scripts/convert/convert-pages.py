
import sys
import csv

import mysql.connector

from getpass import getpass

def create_database(cursor):
    try:
        cursor.execute(
            "CREATE DATABASE {} DEFAULT CHARACTER SET 'utf8'".format(DB_NAME))
    except mysql.connector.Error as err:
        print("Failed creating database: {}".format(err))
        exit(1)

try:
    cursor.execute("USE {}".format(DB_NAME))
except mysql.connector.Error as err:
    print("Database {} does not exists.".format(DB_NAME))
    if err.errno == errorcode.ER_BAD_DB_ERROR:
        create_database(cursor)
        print("Database {} created successfully.".format(DB_NAME))
        cnx.database = DB_NAME
    else:
        print(err)
        exit(1)


def create_entry(header, body, buttons):
    pass


cnx.close()

try:
    with connect(
            host="localhost",
            user="user1"
    ) as connection:
        loadfile(file)
except Error as e:
    print(e)


def loadfile(file):

    with open(file, newline='', encoding="ISO-8859-1") as csv_file:
        reader = csv.reader(csv_file)
        for row in reader:

            topic_name = row[1]
            topic_description = row[2]

            topic_name = topic_name.replace('"', '')
            topic_description = topic_description.replace('"', '')

            print("INSERT INTO Topic VALUES ('NULL','" + topic_name + "' ," + topic_description + "'");

            # print(topic_name, topic_description)
            # print("INSERT INTO Topic VALUES ('NULL' + ", '" + topic_name + "', '" + topic_description + "');
            # section_name = section_name.replace('"', '')
            # item_name = item_name.replace('"', '')

            # print("[\"section_id\": " + "\"" + section_id + "\"", end=', ')
            # print("\"item_id\": " + "\"" + item_id + "\"", end=', ')
            # print("\"section_name\": " + "\"" + section_name + "\"", end=', ')
            # print("\"item_name\": " + "\"" + item_name + "\"", end=', ')
            # print("\"item_description\": " + "\"" + item_description + "\"", end='],')
            # print()


def main():

    # if len(sys.argv) != 3:
    #     print("Usage: csv_convert.py --file [filename]")
    #     exit(-1)

    # file = sys.argv[2]
    file = "/Users/moyer/Technophobia/Data/csv/ContentList.csv"

    cursor = mysql.connector.connect(user='user1', password='Qrfa1241',
                              host='127.0.0.1',
                              database='Topic')

    if (cursor):
        print "Connected."
    # create_database(cursor)

if __name__ == "__main__":
    main()
