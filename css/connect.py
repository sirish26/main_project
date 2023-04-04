import mysql.connector

try:
    # Establishing a connection to MySQL database
    connection = mysql.connector.connect(host='127.0.0.1', port='3326', user='root', password='root',database='sdtd')
    if connection.is_connected():
        db_Info = connection.get_server_info()
        print("Connected to MySQL Server version ", db_Info)
        cursor = connection.cursor()
        cursor.execute("select database();")
        record = cursor.fetchone()
        print("You're connected to database: ", record)

except mysql.connector.Error as e:
    print("Error while connecting to MySQL", e)
