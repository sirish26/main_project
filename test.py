import mysql.connector as sql

mydb=sql.connect(
  host="127.0.0.1",
  db="sdtd",
  port=3326,
  user="root",
  password="root",
auth_plugin='mysql_native_password'
)
