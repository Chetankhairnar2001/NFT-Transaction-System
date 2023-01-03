# BitcoinTradingSystem
CS 6360 Term Project 
* Nikitha Ramisetty(nxr210008)
* Kanakaratna Kalyan Kumar Singamsetty(kxs200019)
* Saakshara Kanyadara(sxk210041)
* Sravani Peddagorla(sxp200188)


## Tools:
* Python 3
* Flask
* MySql
* Python3 Packages:
   * Flask
   * Mysql-python
   * mysql.connector
   * urllib.request
   * json
   * Datetime


## Install:
Before running the program, python3, pip and MySQL should be installed.

```
pip install -r requirements.txt
python read_from_sql.py
```


The commands do the following:
 1) Installs all the requirements present in requirement.txt
 1) 10 clients with the usernames like 'abcu1' and password 'abcp1'; 
 2) 3 traders with usernames like 'abcu10' and password 'abcp10'; and 
 3) 1 manager with username 'abcu13' and password 'abcp13.'
 
Now we have to set the flask app and run flask

## Run:
Make sure to change the templates part in database_project.py
```
set FLASK_APP=database_project.py
flask run
```

## Demo
A live demo of the webpage is running at: [http://127.0.0.1:5000/](http://127.0.0.1:5000/).

## References:
https://api.coindesk.com/v1/bpi/currentprice.json

