# from mysql.connector.connection import MySQLConnection
# import waitress
# from flask import Flask
# from flask import render_template, abort, redirect, url_for,request,session
# from flask_login import current_user, login_required
# import mysql.connector as sql

    
# app = Flask(__name__,template_folder="/Users/nkitharamisetty/Documents/Database_Project/app/templates")
# @app.route('/client-home')
# def home():
#     return render_template("client_home.html")

# @app.route('/account-details')
# def aacount_details():
#     mydb = sql.connect(
#        host = "localhost",
#        user = "root",
#        password = "4c68pyqg"
#     )
#     mycursor = mydb.cursor()
#     mycursor.execute("Use BTSDatabase")
#     fetch_client = "Select * from client where client_id = 100000000"
#     mycursor.execute(fetch_client)

#     rvc = mycursor.fetchall()
 
#     return render_template("client_home_account.html",r=rvc[0])
#     #return render_template("client_home.html",r=rvc[0])

# @app.route('/payment-detail')
# def aacount_details():
#     mydb = sql.connect(
#        host = "localhost",
#        user = "root",
#        password = "4c68pyqg"
#     )
#     mycursor = mydb.cursor()
#     mycursor.execute("Use BTSDatabase")
#     fetch_client = "Select * from client where client_id = 100000000"
#     mycursor.execute(fetch_client)

#     rvc = mycursor.fetchall()
 
#     return render_template("client_home_account.html",r=rvc[0])
#     #return render_template("client_home.html",r=rvc[0])


# if __name__ == '__main__':
#     app.debug = True
#     app.run()