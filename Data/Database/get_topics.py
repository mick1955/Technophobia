
import mysql.connector

con = mysql.connector.connect(user='root', password='root', host='127.0.0.1', database='Topic')

cur = con.cursor(buffered=True)


# Query to get employees who joined in a period defined by two dates
query = "select TopicID, TopicName, TopicDescription from Topic"


# Select the employees getting a raise
cur.execute(query)

# Iterate through the result of cur
for (TopicID, TopicName, TopicDescription) in cur:
    print(TopicID)
    print(TopicName)
    print(TopicDescription)

con.close()
