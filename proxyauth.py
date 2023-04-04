from flask import Flask, request, redirect
import mysql.connector
from connect import mydb

app = Flask(__name__)

# Database connection configuration

@app.route('/login', methods=['POST'])
def login():
    name = request.form['userid']
    password = request.form['pass']
    
    # SQL query to retrieve user with matching username and password
    mycursor = mydb.cursor()
    mycursor.execute("SELECT * FROM charm_proxy WHERE username = %s AND password = %s", (name, password))
    user = mycursor.fetchone()
    
    # Check if user exists in the database
    if user:
        return redirect('/dashboard')
    else:
        return redirect('/wronglogin.html')
    
@app.route('/dashboard')
def dashboard():
    return "Welcome to the dashboard!"

if __name__ == '__main__':
    app.run(debug=True)
