from flask import Flask, request, redirect, session
import mysql.connector
import secrets


# Generate a secure random key
secret_key = secrets.token_hex(16)

app = Flask(__name__)
app.secret_key = secret_key


# Connect to the MySQL database
db = mysql.connector.connect(
    host="127.0.0.1",
    user="3326",
    password="root",
    database="sdtd"
)

@app.route('/authenticate', methods=['POST'])
def authenticate():
    name = request.form['userid']
    password = request.form['pass']
    cname = request.form['cname']

    try:
        # Execute the query to check the user's credentials
        cursor = db.cursor()
        sql = "SELECT * FROM charm_owner WHERE name=%s AND pass=%s AND cloudname=%s"
        cursor.execute(sql, (name, password, cname))
        user = cursor.fetchone()

        if user is not None:
            # Store the user's details in the session
            session['user_id'] = user[0]
            session['username'] = user[1]
            session['cloudname'] = user[2]

            # Redirect to the data owner main page
            return redirect('/Owner.html')

        else:
            # Redirect to the wrong login page
            return redirect('/wronglogin.html')

    except Exception as e:
        print(e)
        return "An error occurred while processing your request."


@app.route('/DataOwnerMain')
def data_owner_main():
    # Check if the user is logged in
    if 'user_id' in session:
        # Render the data owner main page
        return "Welcome, " + session['username'] + "!"

    else:
        # Redirect to the login page
        return redirect('/login.html')


@app.route('/wronglogin.html')
def wrong_login():
    # Render the wrong login page
    return "Wrong username or password."


if __name__ == '__main__':
    app.run(debug=True)
