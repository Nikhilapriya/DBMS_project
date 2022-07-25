drop database store;
create database store;

\c store

CREATE TABLE 	Seller
 (	seller_id VARCHAR(15) NOT NULL ,
  	sname VARCHAR(15) NOT NULL,
  	Address VARCHAR(30),
  	sAge INT CHECK(sAge>25),
  	Gender CHAR NOT NULL,
    	UNIQUE(seller_id),
  	PRIMARY KEY (seller_id) );

CREATE TABLE 	Customer
 (   cust_id VARCHAR(15) NOT NULL ,
     cname VARCHAR(15) NOT NULL,
     Address	 VARCHAR(30),
     Phn_no VARCHAR(13) NOT NULL,
     cAge INT,
     Gender CHAR NOT NULL,
     UNIQUE(cust_id),
     PRIMARY KEY (cust_id)	);

CREATE TABLE 	Bill
      (  bill_id VARCHAR(15) NOT NULL,
         bill_date DATE,
         bill_total FLOAT,
         prod_purchased VARCHAR(30) NOT NULL,
         cust_id VARCHAR(15) NOT NULL,
     	 PRIMARY KEY (bill_id),
     	 FOREIGN KEY (cust_id) REFERENCES Customer(cust_id)	);

CREATE TABLE 	Product
      (	product_id VARCHAR(15) NOT NULL,
               product_rate FLOAT,
               selling_rate FLOAT(4),
               batch_no INT NOT NULL,
               quantity INT DEFAULT 1,
               prod_name VARCHAR(30) NOT NULL UNIQUE,
             	PRIMARY KEY (product_id));

CREATE TABLE 	Inventory
      (    	inv_id VARCHAR(15) NOT NULL,
		quantity INT NOT NULL,
                batch INT NOT NULL,
                product_name VARCHAR(30) NOT NULL ,
                bill_id1 VARCHAR(15) NOT NULL ,
                UNIQUE(bill_id1,inv_id),
                PRIMARY KEY (inv_id),
                FOREIGN KEY (bill_id1) REFERENCES Bill(bill_id),
                FOREIGN KEY (product_name) REFERENCES Product(prod_name)
                 );

CREATE TABLE 	Stock
 (	stock_no INT NOT NULL,
     	date_ DATE,
     	inv_id1 VARCHAR(15) NOT NULL,
      	prod_id VARCHAR(15) NOT NULL,
     	PRIMARY KEY (stock_no),
      	UNIQUE(inv_id1),
      	FOREIGN KEY (prod_id) REFERENCES Product(product_id),
     	FOREIGN KEY (inv_id1) REFERENCES Inventory(inv_id));

CREATE TABLE 	Seller_sells
  (	  s_id VARCHAR(15) NOT NULL ,
          p_id VARCHAR(15) NOT NULL ,
          FOREIGN KEY (s_id) REFERENCES Seller(seller_id),
          FOREIGN KEY (p_id) REFERENCES Product(product_id) );


CREATE TABLE 	Customer_buys
  (	  c_id VARCHAR(15) NOT NULL ,
          p_id VARCHAR(15) NOT NULL ,
      	  FOREIGN KEY (c_id) REFERENCES Customer(cust_id),
          FOREIGN KEY (p_id) REFERENCES Product(product_id) );

CREATE TABLE 	Seller_phnno
  (	s_id VARCHAR(15) NOT NULL ,
       phone VARCHAR(13),
       FOREIGN KEY (s_id) REFERENCES Seller(seller_id) );
