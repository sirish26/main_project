from flask import Flask, render_template, request
from werkzeug.utils import secure_filename
import os
from connect import mydbs

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = 'Gallery/'
# route for displaying the registration form
@app.route('/')
def register_form():
    return render_template('Register.html')

# route for submitting the registration form
@app.route('/register', methods=['POST'])
def register():
    username = request.form['username']
    password = request.form['password']
    email = request.form['email']
    mobile = request.form['mobile']
    address = request.form['address']
    dob = request.form['dob']
    location = request.form['location']
    cloud_name = request.form['cloud_name']
    
    # check if username already exists
    conn = connect()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM charm_owner WHERE username = %s", (username,))
    row = cursor.fetchone()
    if row:
        return "User Name Already Exist. <a href='/'>Go Back</a>"

    # insert user data into the database
    cursor.execute("INSERT INTO charm_owner (username, password, email, mobile, address, dob, location, cloud_name) \
                    VALUES (%s, %s, %s, %s, %s, %s, %s, %s)", 
                    (username, password, email, mobile, address, dob, location, cloud_name))
    conn.commit()

    # save user image to the server and its binary data to the database
    file = request.files['image']
    filename = secure_filename(file.filename)
    file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
    with open(os.path.join(app.config['UPLOAD_FOLDER'], filename), 'rb') as f:
        binary_image = f.read()
    cursor.execute("UPDATE charm_owner SET image = %s WHERE username = %s", (binary_image, username))
    conn.commit()

    cursor.close()
    conn.close()

    return render_template('Owner.html')
if __name__ == '__main__':
    app.run(debug=True)
