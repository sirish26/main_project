from flask import Flask, request, redirect, render_template
import secrets
import mysql
import mysql.connector as sql

app = Flask(__name__, template_folder='templates', static_folder='css')


# Generate a secure random key
secret_key = secrets.token_hex(16)

app.secret_key = secret_key


# # Connect to the MySQL database

mydb=sql.connect(
  host="127.0.0.1",
  db="sdtd",
  port=3326,
  user="root",
  password="root",
auth_plugin='mysql_native_password'
)

@app.route('/', methods=["GET"])
def index():
    return render_template('index.html')


@app.route('/owner', methods=["GET", "POST"])
def Owner():
    if request.method == "POST":
        name = request.form.get("name")
        password = request.form.get("pass")
        cname=request.form.get('cname')
        print(name,cname)
        #database querry

        return render_template('DataOwnerMain.html',name=name,cname=cname)
    return render_template('owner.html')

@app.route('/Cloud',methods=["GET"])
def cloud():
    return render_template("Cloud.html")


@app.route('/Proxy',methods=["GET","POST"])
def proxy():
    if request.method == 'POST':
        name = request.form['userid']
        password = request.form['pass']

        # SQL query to retrieve user with matching username and password
        mycursor = mydb.cursor()
        mycursor.execute("SELECT * FROM charm_proxy WHERE username = %s AND password = %s", (name, password))
        user = mycursor.fetchone()
        if user:
            return redirect('/dashboard')
        else:
            return redirect('/wronglogin.html')
    return render_template("proxy.html")

@app.route('/Register', methods=["GET", "POST"])
def Register():
    return render_template('Register.html')

@app.route('/Enduser',methods=["GET","POST"])
def Enderuser():
    if request.method == "POST":
        name = request.form['name']
        password = request.form['pass']

        # SQL query to retrieve user with matching username and password
        mycursor = mydb.cursor()
        mycursor.execute("SELECT * FROM charm_proxy WHERE username = %s AND password = %s", (name, password))
        user = mycursor.fetchone()

        if user:
            return render_template('EndUserMain.html')
        else:
            return render_template('wronglogin.html')
    return render_template('Enduser.html')

if __name__ == '__main__':
    app.run(debug=True)
