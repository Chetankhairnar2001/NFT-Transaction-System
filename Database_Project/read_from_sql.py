import mysql.connector as sql
    
def mysql_client(dictionary1):
    mydb = sql.connect(
       host = "localhost",
       user = "root",
       password = "",       
    )
    mycursor = mydb.cursor()
    mycursor.execute("use BTSDatabase")    
    mycursor.execute("CREATE TABLE IF NOT EXISTS client(client_id int(11) UNIQUE ,first_name varchar(255),last_name varchar(255),email varchar(255) UNIQUE,phone_number varchar(255),cell_number varchar(255),acc_status varchar(50),username varchar(255) UNIQUE,acc_password varchar(255),bitcoin_balance float,fiat_balance float,user_type varchar(50) NOT NULL,PRIMARY KEY(client_id))")
    qry1 = "Insert Into client(client_id, first_name, last_name, email, phone_number, cell_number, acc_status, username, acc_password, bitcoin_balance, fiat_balance, user_type) Values (%s, %s, %s, %s, %s, %s, %s, %s, %s,%s, %s, %s)"
    mycursor.execute(qry1, tuple(dictionary1.values()))

    mydb.commit()

def mysql_address(dictionary2):
    mydb = sql.connect(
       host = "localhost",
       user = "root",
       password = "",      
    )
    mycursor = mydb.cursor()
    mycursor.execute("use BTSDatabase")

    mycursor.execute("CREATE TABLE IF NOT EXISTS client_address(client_id int(11) UNIQUE ,street_address varchar(255),city varchar(255),state varchar(255),zip_code varchar(255),PRIMARY KEY(client_id))")
    qry2 = "Insert into client_address(client_id,street_address,city,state,zip_code) Values (%s, %s, %s, %s, %s)"
    mycursor.execute(qry2, tuple(dictionary2.values()))

    mydb.commit()

def mysql_fetch():
    mydb = sql.connect(
       host = "localhost",
       user = "root",
       password = ""
    )
    mycursor = mydb.cursor()
    mycursor.execute("Use BTSDatabase")
    fetch_client = "Select * from client"
    mycursor.execute(fetch_client)

    return mycursor.fetchall()


def data():
    for i in range(0,10):
        if i%2 == 0:
            status = "Gold"
        else:
            status = "Silver"
        record = dict()
        id = 100000000
        record['client_id'] = id + i
        record['first_name'] = 'abc' + str(i)
        record['last_name'] = 'xyz' + str(i)
        record['email'] = 'abc' + str(i) + '@gmail.com'
        record['phone_number'] = str(9000000000 + i)
        record['cell_number'] = str(4690000000 + i)
        record['acc_status'] = status
        record['username'] = 'abcu' + str(i)
        record['acc_password'] = 'abcp' + str(i)
        record['bitcoin_balance'] = float(1 + i)
        record['fiat_balance'] = float(1000000000 + i)
        record['user_type'] = "Client"
        mysql_client(record)

    for i in range(10,13):
        record = dict()
        id = 100000000
        record['client_id'] = id + i
        record['first_name'] = 'abc' + str(i)
        record['last_name'] = 'xyz' + str(i)
        record['email'] = 'abc' + str(i) + '@gmail.com'
        record['phone_number'] = str(9000000000 + i)
        record['cell_number'] = str(4690000000 + i)
        record['acc_status'] = None
        record['username'] = 'abcu' + str(i)
        record['acc_password'] = 'abcp' + str(i)
        record['bitcoin_balance'] = None
        record['fiat_balance'] = None
        record['user_type'] = "Trader"
        mysql_client(record)
    for i in range(13,14):
        record = dict()
        id = 100000000
        record['client_id'] = id + i
        record['first_name'] = 'abc' + str(i)
        record['last_name'] = 'xyz' + str(i)
        record['email'] = 'abc' + str(i) + '@gmail.com'
        record['phone_number'] = str(9000000000 + i)
        record['cell_number'] = str(4690000000 + i)
        record['acc_status'] = None
        record['username'] = 'abcu' + str(i)
        record['acc_password'] = 'abcp' + str(i)
        record['bitcoin_balance'] = None
        record['fiat_balance'] = None
        record['user_type'] = "Manager"
        mysql_client(record)
def data_address():
    for i in range(0,10):
        record1 = dict()
        id = 100000000
        record1['client_id'] = id + i
        record1['street_address'] = 'frankford road' + str(7421 + i)
        record1['city'] = 'Dallas' 
        record1['state'] = 'Texas'
        record1['zipcode'] = '75252'
        mysql_address(record1)
    
def dropTable():
    mydb = sql.connect(
       host = "localhost",
       user = "root",
       password = "",      
    )
    mycursor = mydb.cursor()
    mycursor.execute("use BTSDatabase")  
    qr = "DROP TABLE CLIENT"
    qr1 = "DROP TABLE CLIENT_ADDRESS"
    mycursor.execute(qr)
    mycursor.execute(qr1)

if __name__ == '__main__':
    dropTable()
    data()
    data_address()
    print(mysql_fetch)