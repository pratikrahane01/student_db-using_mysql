CREATE DATABASE IF NOT EXISTS student_data_base;
USE student_data_base;

CREATE TABLE students_info(
student_id INT auto_increment primary key,
NAME varchar(100),
EMAIL varchar (100) unique,
ADDRESS varchar(300)
);

INSERT INTO students_info (NAME,EMAIL,ADDRESS)
VALUES ('PRATIK','pratik@gmail.com', 'Aahilyanagar,maharastra'),
('Aryan ','Aryan@gmail.com','pune,maharastra'),
('chetan bhagat','chetan@gmail.com','pune,maharastra'),
('Tanay','tanay@gmail.com','pune,maharastra'),
('shubham sathe','satheshhubham@gmail.com','pune,maharastra'),
('krushna','krushna@gmail.com','pune,maharastra'),
('Aditya patil','Adityapatil@gmail.com','pune,maharastra'),
('ram','ram@gmail.com','pune,maharastra'),
('tejas','tejas@gmail.com','pune,maharastra'),
('om ','om@gmail.com','pune,maharastra')
;

SELECT * FROM students_info;

SELECT ADDRESS FROM students_info;
SELECT DISTINCT NAME FROM students_info;
SELECT NAME,ADDRESS FROM students_info;

SELECT * FROM students_info WHERE ADDRESS LIKE '%PUNE,MAHARASTRA%';

SELECT * FROM students_info WHERE NAME='PRATIK' AND ADDRESS LIKE '%Aahilyanagar,maharastra%';

SELECT * FROM students_info WHERE ADDRESS NOT LIKE '%pune,maharastra%';


SELECT * FROM students_info ORDER BY NAME ASC; 

SELECT * FROM students_info ORDER BY NAME DESC;

UPDATE students_info
SET NAME='chetan ugale'
WHERE CUSTOMERID =3;

SELECT * FROM students_info;

CREATE TABLE CUSTOMER(
CUSTOMERID INT PRIMARY KEY,
CUSTOMER_NAME VARCHAR(100)
);

INSERT INTO CUSTOMER(CUSTOMERID,CUSTOMER_NAME)
VALUES("1","SAHIL WALE"),
("2","PRADIP SINGH"),
("3","Aathrav Rahane");

CREATE TABLE ORDERS (
ORDERID INT PRIMARY KEY,
PRODUCT VARCHAR(100),
AMOUNT DECIMAL(10,2),
CUSTOMERID INT,
foreign key (CUSTOMERID) references CUSTOMER(CUSTOMERID)
);

INSERT INTO ORDERS(ORDERID,PRODUCT,AMOUNT,CUSTOMERID)
VALUES("101","LAPTOP","54000.26",2),
("102","MOUSE","500.03",1),
("103","KEYBOARD","700.67",1),
("104","HEADPHONES","900.37",3),
("109","WATCH","999.99",3),
("107","KEYBOARD","700.67",2);



-- INNER JOIN

SELECT CUSTOMER.CUSTOMER_NAME,ORDERS.PRODUCT,ORDERS.AMOUNT 
FROM CUSTOMER
INNER JOIN ORDERS ON ORDERS.CUSTOMERID=CUSTOMER.CUSTOMERID;

#LEFT JOIN

SELECT CUSTOMER.CUSTOMER_NAME,ORDERS.PRODUCT,ORDERS.AMOUNT
FROM CUSTOMER
LEFT JOIN ORDERS ON ORDERS.CUSTOMERID=CUSTOMER.CUSTOMERID;

#RIGHT JOIN
SELECT CUSTOMER.CUSTOMER_NAME,ORDERS.PRODUCT,ORDERS.AMOUNT 
FROM CUSTOMER
RIGHT JOIN ORDERS ON ORDERS.CUSTOMERID=CUSTOMER.CUSTOMERID;

#FULL OUTER JOIN
SELECT CUSTOMER.CUSTOMER_NAME,ORDERS.PRODUCT,ORDERS.AMOUNT -- WHICH COLUMN YOU WANT TO SHOW IN INNER JOIN
FROM CUSTOMER
LEFT JOIN ORDERS ON ORDERS.CUSTOMERID=CUSTOMER.CUSTOMERID





