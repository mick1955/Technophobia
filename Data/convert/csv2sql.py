 import mysql.connector


def main():

    topic_db = mysql.connector.connect(
        host='localhost',
        user='root',
        password='root',
        database='Topic'
    )
    cursor = topic_db.cursor()
    cursor.execute("SELECT TopicID, TopicName, TopicDescription FROM Topic");

    my_result = cursor.fetchall()
    for x in my_result:
        print(x)

    # html = "<div class = " + data[0] + " and " + data[1] + " and " + data[2] + ">"
    # print(html.format('1', '2', '3'))


if __name__ == "__main__":
    main()
