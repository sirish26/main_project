from flask import Flask, request, redirect, render_template

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

app = Flask(__name__,template_folder='templates',static_folder='css')

@app.route('/',methods=["GET"])
def index():
    return render_template('index.html')

@app.route('/Owner',methods=["GET","POST"])
def Owner():
    return render_template('owner.html')


@app.route('/Register',methods=["GET","POST"])
def Register():
    return render_template('Register.html')
 

@app.route('/login', methods=['POST'])
def login():
    name = request.form['userid']
    password = request.form['pass']
    clname = request.form['cname']
    
    # Set application and session attributes
    app.config['cloudName'] = clname
    session['cnames'] = clname
    
    # SQL query to retrieve user with matching username, password, and cloud name
    mycursor = mydb.cursor()
    sql = "SELECT * FROM charm_cloud WHERE username = %s AND password = %s AND cname = %s"
    val = (name, password, clname)
    mycursor.execute(sql, val)
    user = mycursor.fetchone()
    
    # Check if user exists in the database
    if user:
        # Set application attributes based on cloud name
        if clname.lower() == 'rackspace':
            app.config['cnames1'] = clname
        elif clname.lower() == 'amazon s3':
            app.config['cnames2'] = clname
        elif clname.lower() == 'windows azure':
            app.config['cnames3'] = clname
        elif clname.lower() == 'aliyun oss':
            app.config['cnames4'] = clname
        
        return redirect('/CloudServerMain.jsp')
    else:
        return redirect('/wronglogin.html')

if __name__ == '__main__':
    app.run(debug=True)
