
CREATE DATABASE IF NOT EXISTS BTSDatabase ;
USE BTSDatabase;
CREATE TABLE IF NOT EXISTS client(
	client_id int(11) UNIQUE ,
	first_name varchar(255),
	last_name varchar(255),
	email varchar(255) ,
	phone_number varchar(255),
	cell_number varchar(255),
	acc_status varchar(50),    
	username varchar(255) UNIQUE,
	acc_password varchar(255),
	bitcoin_balance float,
	fiat_balance float,
	user_type varchar(50) NOT NULL,
	PRIMARY KEY(client_id)
);

CREATE TABLE IF NOT EXISTS client_address(
	client_id int(11) UNIQUE ,
	street_address varchar(255),
	city varchar(255),
	state varchar(255),
    zip_code varchar(255),
    PRIMARY KEY(client_id)
);


CREATE TABLE IF NOT EXISTS payments(
    payment_id int(11) UNIQUE NOT NULL ,
	client_id int(11) NOT NULL,
	trader_id int(11) NOT NULL,
    payment_status varchar(50) NOT NULL,
    payment_amount varchar(255) NOT NULL,
	timestamp datetime NOT NULL,
	PRIMARY KEY (payment_id)
);
CREATE TABLE IF NOT EXISTS order_transaction(
	trans_id int(11) UNIQUE NOT NULL ,
    trans_type varchar(50) NOT NULL,
	trans_value int(50) NOT NULL,
	comm_type varchar(255) NOT NULL,
	comm_amount float NOT NULL,
	client_id int(11),
	trader_id int(11),
	timestamp datetime NOT NULL,
	PRIMARY KEY(trans_id)
);

CREATE TABLE IF NOT EXISTS logs(
	logs_id int(11) UNIQUE NOT NULL ,
    timestamp datetime NOT NULL,
    trans_id int(11) NOT NULL,
    client_id int(11),
    trader_id int(11),
    status varchar(255) NOT NULL,
    trans_type varchar(255) NOT NULL,
    PRIMARY KEY(logs_id)
    
);
SELECT * FROM CLIENT;
SELECT * FROM PAYMENTS;
SELECT * FROM client_address;
SELECT * FROM order_transaction;
SELECT * FROM payments ;

#SHOW TABLES;
#DROP TABLE client;
#DROP TABLE client_address;
#DROP TABLE payments;
#DROP TABLE order_transaction;
#DROP TABLE logs;


