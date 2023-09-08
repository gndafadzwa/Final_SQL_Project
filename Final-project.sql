/*
GIFT N. MAZARURA
CIS 245 – Final Project
Prof. Reed
*/

--**********************************************************************************************************************************************--

--1. CUSTOMER TABLE

/*
DROP TABLE CUSTOMER;
SELECT * FROM CUSTOMER;
*/

CREATE TABLE CUSTOMER(
	CUSTOMER_NUM INTEGER IDENTITY(1001,1) NOT NULL,
	LICENSE_NUM CHAR (20) NOT NULL,
	FIRST_NAME VARCHAR (25) NOT NULL,
	MIDDLE_NAME CHAR (2),
	LAST_NAME VARCHAR (25) NOT NULL,
	PHONE_NUM INTEGER NOT NULL,
	EMAIL_ADD VARCHAR (30) NOT NULL,
	STREET VARCHAR (30) NOT NULL,
	CITY VARCHAR (20) NOT NULL,
	STATE VARCHAR (20) NOT NULL,
	ZIPCODE INTEGER NOT NULL,
	PRIMARY KEY(CUSTOMER_NUM)
	);

INSERT INTO CUSTOMER 
	VALUES('ZW22376DJ', 'Tatenda','B','Chataika','0772264691', 'tchataika01@gmail.com','70 Chiremba Rd','Queensdale','Harare',026310);
INSERT INTO CUSTOMER 
	VALUES('ZW28373MJ', 'Munyaradzi','A','Choga','0772264700', 'munyalex@hotmail.com','35 Agness Wilson Cr','Hatfield','Harare',026310);
INSERT INTO CUSTOMER
	VALUES('ZW22376CJ', 'Samantha', NULL,'Chivandire','0762264510', 'schivandire@gmail.com','10 Wilimington Rd','Fairview','Victoria Falls',026381);
INSERT INTO CUSTOMER 
	VALUES('ZW25276DJ', 'Michelle',NULL,'Masko','0778264521', 'michmasko@zimphamarcy.co.zw','3 Dochester Cl','Mandara','Bulawayo',026320);
INSERT INTO CUSTOMER 
	VALUES('ZW22856LJ', 'Ruth','N','Rioga','0772253651', 'ruthrioga@zwcensus.co.zw','250 First Street','Breaside','Harare',026310);
INSERT INTO CUSTOMER 
	VALUES('ZW29373MJ', 'Mqondisi',NULL,'Chando','077345820', 'chandomq@nust.co.zw','8 Khulumanami Street','Coventry','Bulawayo',026320);
INSERT INTO CUSTOMER 
	VALUES('ZW26549LJ', 'Patricia','N','Mavura','0768622462', 'pmavura@gmail.com','19 Tongogara Rd','Mukoba','Gweru',026361);
INSERT INTO CUSTOMER 
	VALUES('ZW25168SJ', 'Charles','J','Murerwa','0777563521', 'murerwacj@mutarepoly.co.zw','465 Area 15','Dangamvura','Mutare',026315);
INSERT INTO CUSTOMER 
	VALUES('ZW25854MJ', 'Steve','C','Banda','0773843521', 'steve.banda@africapride.com','756 Wilson Street','Midrand','Bulawayo',026320);
INSERT INTO CUSTOMER 
	VALUES('ZW28625AJ', 'Millicent',NULL,'Chataika','0779562421', 'mchataika@gmail.com','70 Chiremba Rd','Queensdale','Harare',026310);
INSERT INTO CUSTOMER 
	VALUES('ZW22376DJ', 'Shungu',NULL,'Kachidza','0772268468', 'shue.kay@firstmutual.com','25 Malberry Rd','Borrowdale','Harare',026310);
INSERT INTO CUSTOMER 
	VALUES('ZW22226AJ', 'Arravhani','V','Mudhau','0772895291', 'vanessa@ey.co.zw','954 Little Rock Ct','Orchards','Victoria Falls',026381);
INSERT INTO CUSTOMER 
	VALUES('ZW22376KJ', 'Tatenda','C','Chisi','0775789562', 'chisi.tatenda@pricewaters.com','28 Kensington Blvd','Brookview','Harare',026310);
INSERT INTO CUSTOMER 
	VALUES('ZW26258LJ', 'Gilbert',NULL,'Grifiths','0775478962', 'ggrifiths@grifithsllc.com','684 Masasa Highway','Brookview','Harare',026310);
INSERT INTO CUSTOMER 
	VALUES('ZW25558AJ', 'Kudzai','K','Mokolo','0773486340', 'mokolokk@worldvision.org','2658 Kelly Drive','Morningside','Mutare',026315);
INSERT INTO CUSTOMER 
	VALUES('ZW23354TJ', 'Thando','L','Ncube','0777577255', 'tando.ncube@smartech.com','745 Townview Street','Lakeside','Bulawayo',026320);


--**********************************************************************************************************************************************--
--2. VEHICLE TABLE

/*
DROP TABLE VEHICLE;
SELECT * FROM VEHICLE;
*/

CREATE TABLE VEHICLE(
	REG_NUM CHAR (8)  NOT NULL,
	AVAILABILITY VARCHAR (1) DEFAULT 'Y' NOT NULL,
	MAKE VARCHAR (15) NOT NULL,
	MODEL VARCHAR (15) NOT NULL,
	MODEL_YEAR INTEGER  NOT NULL,
	MILEAGE INTEGER NOT NULL,
	CATEGORY_NUM INTEGER NOT NULL,
	COLOR CHAR (10) NOT NULL,
	BRANCH_NUM INTEGER NOT NULL,
	PRIMARY KEY (REG_NUM),
	FOREIGN KEY (BRANCH_NUM) REFERENCES BRANCH(BRANCH_NUM),
	FOREIGN KEY (CATEGORY_NUM) REFERENCES VEHICLE_CATEGORY(CATEGORY_NUM)
	);


INSERT INTO VEHICLE 
	VALUES('AAA1234','Y','Mercedes-Benz','ML63 AMG',2019,5000,2,'Black',1);
INSERT INTO VEHICLE 
	VALUES('AAA1235','N','Mercedes-Benz','C63 AMG',2019,6000,3,'White',2);
INSERT INTO VEHICLE 
	VALUES('AAA1236','N','Mercedes-Benz','E550', 2017,15000,1,'Silver',1);
INSERT INTO VEHICLE 
	VALUES('AAA1237','Y','Mercedes-Benz','E550', 2018,14550,3,'Blue',2);
INSERT INTO VEHICLE 
	VALUES('AAB1242','Y','BMW','X7',2020,900,1,'Grey',1);
INSERT INTO VEHICLE 
	VALUES('AAB1243','Y','BMW','X3',2019,2000,2,'Navy',2);
INSERT INTO VEHICLE 
	VALUES('AAB1244','N','BMW','330e',2018,9700,3,'White',1);
INSERT INTO VEHICLE 
	VALUES('AAB1246','Y','BMW','430i', 2019,8550,3,'Black',2);
INSERT INTO VEHICLE 
	VALUES('AAB1245','N','BMW','X5', 2017,16750,1,'Silver',1);
INSERT INTO VEHICLE  
	VALUES('ABC2123','Y','Hyundai','Accent',2017,12356,6,'Black',1);
INSERT INTO VEHICLE  
	VALUES('ABC2125','Y','Toyota','Corolla',2016,25210,7,'White',2);
INSERT INTO VEHICLE  
	VALUES('ABC2128','Y','Honda','Civic',2017,20145,6,'Blue',2);
INSERT INTO VEHICLE  
	VALUES('ABC2356','N','Ford','Focus',2016,12000,7,'Grey',2);
INSERT INTO VEHICLE  
	VALUES('ABB3202','N','Volkswagon','Golf',2019,5600,7,'White',1);
INSERT INTO VEHICLE  
	VALUES('ABX2261','Y','Chevrolet','Cruze',2019,5600,6,'White',1);
INSERT INTO VEHICLE  
	VALUES('ABC3261','Y','Honda','Accord',2017,20145,6,'Silver',2);
INSERT INTO VEHICLE  
	VALUES('ABA9865','N','Chevrolet','Trail Blazer',2019,5600,4,'Black',2);
INSERT INTO VEHICLE  
	VALUES('ABC6125','Y','Toyota','Highlander',2017,25210,10,'White',1);
INSERT INTO VEHICLE  
	VALUES('ABC6584','N','Mazda','CX-3',2018,10010,5,'Silver',2);
INSERT INTO VEHICLE  
	VALUES('ABC7414','Y','Toyota','Tocoma',2018,2210,10,'Red',1);
INSERT INTO VEHICLE  
	VALUES('ABC3222','Y','Mazda','CX-9',2018,10010,4,'Maroon',2);
INSERT INTO VEHICLE  
	VALUES('ABC1922','N','Volvo','XC90',2020,510,4,'Blue',1);
INSERT INTO VEHICLE  
	VALUES('ABC1862','N','Volvo','X9770',2017,28510,9,'White',1);
INSERT INTO VEHICLE  
	VALUES('ABC1864','Y','Scania','Higer',2017,22010,9,'Black',2);
INSERT INTO VEHICLE  
	VALUES('ABC1866','N','Mercedes_Benz','Sprinter',2018,14010,8,'White',1);
INSERT INTO VEHICLE  
	VALUES('ABC1868','Y','Mercedes_Benz','Sprinter',2019,10010,8,'White',2);
INSERT INTO VEHICLE  
	VALUES('ABC2914','Y','Toyota','Tundra',2020,7210,10,'Navy',1);
INSERT INTO VEHICLE  
	VALUES('ABC3814','Y','Ford','F180',2020,5210,10,'White',2);

--**********************************************************************************************************************************************--

--3. VEHICLE CATEGORY	

/*
DROP TABLE VEHICLE_CATEGORY;
SELECT * FROM VEHICLE_CATEGORY;
*/

CREATE TABLE VEHICLE_CATEGORY(
	CATEGORY_NUM INTEGER NOT NULL,
	CATEGORY_NAME VARCHAR (25) NOT NULL,
	VEHICLE_TYPE VARCHAR (25) NOT NULL,
	NUM_PASSENGERS INTEGER NOT NULL,
	COST_PER_DAY DECIMAL (5,2) NOT NULL,
	PRIMARY KEY (CATEGORY_NUM)
	);


INSERT INTO VEHICLE_CATEGORY  
	VALUES(1,'Luxury_A','SUV',8,125.00);
INSERT INTO VEHICLE_CATEGORY
	VALUES(2,'Luxury_B','Mid-Size SUV',5,110.00);
INSERT INTO VEHICLE_CATEGORY
	VALUES(3,'Luxury_C','Sedan',5,100.00);
INSERT INTO VEHICLE_CATEGORY
	VALUES(4,'Economy_A','SUV',8,110.00);
INSERT INTO VEHICLE_CATEGORY
	VALUES(5,'Economy_B','Mid-Size SUV',5,100.00);
INSERT INTO VEHICLE_CATEGORY
	VALUES(6,'Economy_C','Sedan',5,80.00);
INSERT INTO VEHICLE_CATEGORY
	VALUES(7,'Economy_D','Sedan',5,60.00);
INSERT INTO VEHICLE_CATEGORY
	VALUES(8,'Busses_A','Van',25,260.00);
INSERT INTO VEHICLE_CATEGORY
	VALUES(9,'Busses_B','Coach',50,400.00);
INSERT INTO VEHICLE_CATEGORY
	VALUES(10,'Economy_E','Trucks',4,130.00);

--**********************************************************************************************************************************************--

--4. RESERVATIONS

/*
DROP TABLE RESERVATIONS;
SELECT * FROM RESERVATIONS;
*/

CREATE TABLE RESERVATIONS(
	RESERVATION_NUM INTEGER IDENTITY (10001,5) NOT NULL ,
	PICKUP_DATE DATE NOT NULL,
	DROPOFF_DATE DATE NOT NULL,
	TOTAL_COST DECIMAL (6,2),
	CUSTOMER_NUM INTEGER NOT NULL,
	CATEGORY_NUM INTEGER NOT NULL,
	REG_NUM CHAR (8)  NOT NULL,
	BRANCH_NUM INTEGER NOT NULL,
	PRIMARY KEY (RESERVATION_NUM),
	FOREIGN KEY (CUSTOMER_NUM) REFERENCES CUSTOMER(CUSTOMER_NUM),
	FOREIGN KEY (CATEGORY_NUM) REFERENCES VEHICLE_CATEGORY(CATEGORY_NUM),
	FOREIGN KEY (REG_NUM) REFERENCES VEHICLE(REG_NUM),
	FOREIGN KEY (BRANCH_NUM) REFERENCES BRANCH(BRANCH_NUM),
	);


INSERT INTO RESERVATIONS 
	VALUES('3/1/2020','3/1/2020',180.00,1003,6,'ABC2123',1);
INSERT INTO RESERVATIONS  
	VALUES('3/1/2020','3/14/2020',1825.00,1002,1,'AAA1236',1);
INSERT INTO RESERVATIONS  
	VALUES('3/4/2020','3/8/2020',1250.00,1010,8,'ABC1868',2);
INSERT INTO RESERVATIONS  
	VALUES('3/4/2020','3/5/2020',150.00,1003,7,'ABB3202',1);
INSERT INTO RESERVATIONS  
	VALUES('3/7/2020','3/10/2020',215.00,1004,7,'ABC2356',2);
INSERT INTO RESERVATIONS  
	VALUES('3/7/2020','3/15/2020',1015.00,1011,2,'AAA1234',1);
INSERT INTO RESERVATIONS  
	VALUES('3/7/2020','3/17/2020',1185.00,1016,3,'AAB1244',1);
INSERT INTO RESERVATIONS  
	VALUES('3/7/2020','3/8/2020',732.00,1006,8,'ABC1864',2);
INSERT INTO RESERVATIONS  
	VALUES('3/10/2020','3/11/2020',324.00,1001,4,'ABC7414',1);
INSERT INTO RESERVATIONS  
	VALUES('3/12/2020','3/14/2020',922.00,1006,8,'ABC1864',2);
INSERT INTO RESERVATIONS  
	VALUES('3/15/2020','3/18/2020',1322.00,1006,8,'ABC1866',1);
INSERT INTO RESERVATIONS  
	VALUES('3/15/2020','3/18/2020',689.00,1003,4,'ABC6125',1);
INSERT INTO RESERVATIONS  
	VALUES('3/16/2020','3/19/2020',682.00,1002,1,'AAB1242',1);
INSERT INTO RESERVATIONS  
	VALUES('3/20/2020','3/22/2020',456.00,1011,2,'AAA1235',1);
INSERT INTO RESERVATIONS  
	VALUES('3/22/2020','3/27/2020',1203.00,1013,10,'ABC3814',2);
INSERT INTO RESERVATIONS  
	VALUES('3/23/2020','3/30/2020',1860.00,1012,10,'ABC2914',1);
INSERT INTO RESERVATIONS  
	VALUES('3/24/2020','3/28/2020',876.00,1002,1,'AAB1242',1);
INSERT INTO RESERVATIONS  
	VALUES('3/24/2020','3/24/2020',185.00,1001,5,'ABC6584',1);
INSERT INTO RESERVATIONS  
	VALUES('3/24/2020','3/30/2020',549.00,1005,7,'ABC2125',2);
INSERT INTO RESERVATIONS  
	VALUES('3/24/2020','3/30/2020',888.00,1016,4,'ABA9865',2);
INSERT INTO RESERVATIONS  
	VALUES('3/28/2020','3/31/2020',682.00,1015,3,'AAB1244',1);
INSERT INTO RESERVATIONS  
	VALUES('3/28/2020','3/30/2020',529.00,1016,3,'AAB1246',2);


--**********************************************************************************************************************************************--
--5. BRANCH

/*
DROP TABLE BRANCH;
SELECT * FROM BRANCH;
*/

CREATE TABLE BRANCH(
	BRANCH_NUM INTEGER NOT NULL PRIMARY KEY,
	BRANCH_NAME VARCHAR (40) NOT NULL,
	STREET VARCHAR (30) NOT NULL,
	CITY VARCHAR (20) NOT NULL,
	STATE VARCHAR (20) NOT NULL,
	ZIPCODE INTEGER NOT NULL,
	);


INSERT INTO BRANCH 
	VALUES(1,'Harare International Aiport','25 Airport Avenue','Bridgeport','Harare',026310);
INSERT INTO BRANCH 
	VALUES(2,'Victoria Fall International Aiport','777 Airport Way','Park Meadowlands','Victoria Falls',026381);

--**********************************************************************************************************************************************--

SELECT * FROM CUSTOMER;
SELECT * FROM VEHICLE;
SELECT * FROM VEHICLE_CATEGORY;
SELECT * FROM RESERVATIONS;
SELECT * FROM BRANCH;

--**********************************************************************************************************************************************--
--1. GROUP BY

-- grouping customers according to the amount every customer has spend
SELECT CUSTOMER_NUM, SUM(TOTAL_COST) AS TOTAL_COST_PER_CUSTOMER
FROM RESERVATIONS
GROUP BY CUSTOMER_NUM;

--**********************************************************************************************************************************************--
--2. ORDER BY

-- ordering customers with their reservation numbers
SELECT r.RESERVATION_NUM, c.FIRST_NAME, c.LAST_NAME
FROM CUSTOMER AS c, RESERVATIONS AS r
WHERE c.CUSTOMER_NUM = r.CUSTOMER_NUM
ORDER BY LAST_NAME, RESERVATION_NUM;

--**********************************************************************************************************************************************--
--3. STRING FUNCTION

SELECT LEFT(EMAIL_ADD, 10) AS LEFT_EXTRACT_FUNC, -- LEFT FUNCTION - extracts 10 characters from the email address field
UPPER(FIRST_NAME) AS UPPERCASE_FUNC,             -- UPPER FUNCTION - converts all first name to upper case
LOWER(LAST_NAME) AS LOWERCASE_FUNC,              -- LOWER FUNCTION - converts all last names to lower case
LEN(EMAIL_ADD) AS LENGTH_FUNC,                   -- LENGTH FUNCTION - returns the length of email address
DIFFERENCE(FIRST_NAME, LAST_NAME) AS DIFF_FUNC   -- DIFFERENCE FUNCTION
FROM CUSTOMER;

--**********************************************************************************************************************************************--
--4. DATE FUNCTION

-- DATEDIFF FUNCTION
--datediff function which calculate the number of nights the customer will have the vehicle
SELECT RESERVATION_NUM, CUSTOMER_NUM, DATEDIFF(DD, PICKUP_DATE,DROPOFF_DATE) AS OVERNIGHT_DAYS_RESERVED 
FROM RESERVATIONS
WHERE DATEDIFF(DD, PICKUP_DATE,DROPOFF_DATE) > 3
ORDER BY CUSTOMER_NUM, RESERVATION_NUM;

-- GET DATE FUNCTION 
--date changes everyday which helps when checking availability of the car onsite.
SELECT *, CONVERT(DATE,GETDATE()) AS "TODAY's_DATE"      
FROM VEHICLE;

--**********************************************************************************************************************************************--
--5. COMPARISON OPERATORS 

-- using comparison operators to return SUV vehicles that carry more than 5 passengers that costs less than $120
SELECT v.MAKE, v.MODEL, v.MODEL_YEAR, vc.VEHICLE_TYPE, vc.NUM_PASSENGERS
FROM VEHICLE AS v, VEHICLE_CATEGORY AS vc
WHERE v.CATEGORY_NUM = vc.CATEGORY_NUM       
AND vc.VEHICLE_TYPE = 'SUV'                   -- EQUALS OPERATOR
AND vc.NUM_PASSENGERS > 5                    -- GREATER THAN OPERATOR
AND vc.COST_PER_DAY < 120;                   -- LESS THAN OPERATOR

--**********************************************************************************************************************************************--
--6. NUMERIC FUNCTIONS

--COUNT FUNCTION 
--Count function to get the total number of vehicles per every branch
SELECT BRANCH_NUM, COUNT(REG_NUM) AS VEHICLES_PER_BRANCH
FROM VEHICLE
WHERE BRANCH_NUM = 1
OR BRANCH_NUM = 2
GROUP BY BRANCH_NUM;

--AVERAGE
--Average function to estimate which vehicle make is mostly prefered by customers through milage
SELECT MAKE, AVG(MILEAGE) AS AvgMilage
FROM VEHICLE
GROUP BY MAKE
ORDER BY AvgMilage;

--**********************************************************************************************************************************---
--7. LOGICAL OPERATORS

--IN OPERATOR
-- IN operator to return vehicles that costs more that $120 per day
SELECT REG_NUM, "MAKE"+'-'+"MODEL" AS VEHICLE
FROM VEHICLE
WHERE CATEGORY_NUM IN
(SELECT CATEGORY_NUM
FROM VEHICLE_CATEGORY 
WHERE COST_PER_DAY > 120);

--ANY OPERATOR
--using any operator to pull record of any vehicle that generated more than $1000
SELECT REG_NUM, "MAKE"+'-'+"MODEL" AS VEHICLE
FROM VEHICLE
WHERE REG_NUM = ANY 
(SELECT REG_NUM 
FROM RESERVATIONS 
WHERE TOTAL_COST >= 1000);

--LIKE OPERATOR
--using LIKE operator to return all customers with last name that start with 'ch'
SELECT * FROM Customer
WHERE LAST_NAME LIKE 'ch%';

--BETWEEN OPERATOR
--using between operator to show all the reservations that were made from Branch_1 from March 10 to March 23
SELECT * 
FROM RESERVATIONS 
WHERE PICKUP_DATE BETWEEN '2020-03-10' AND '2020-03-23'
AND BRANCH_NUM = 1;

--NOT OPERATOR
-- using the NOT operator to return customers who live in states that are not Harare and Bulawayo
SELECT * 
FROM Customer
WHERE NOT STATE  = 'HARARE'
AND NOT STATE = 'BULAWAYO';

--**********************************************************************************************************************************************--
--8. MULTIPLE TABLE QUERRIES

--INNER JOIN
--listing the name of customers who reserved vehicle from branch 2
SELECT r.RESERVATION_NUM, r.PICKUP_DATE, c.CUSTOMER_NUM, c.LAST_NAME, c.FIRST_NAME
FROM RESERVATIONS AS r
INNER JOIN CUSTOMER AS c
ON r.CUSTOMER_NUM =c.CUSTOMER_NUM
AND BRANCH_NUM = 2
ORDER BY r.RESERVATION_NUM;

--SELF JOIN
-- Using self join on the reservation table to find customers who have reserved cars from all branches
SELECT i.RESERVATION_NUM, j.RESERVATION_NUM
FROM RESERVATIONS i, RESERVATIONS j
WHERE i.CUSTOMER_NUM = j.CUSTOMER_NUM            
AND i.BRANCH_NUM < j.BRANCH_NUM                
ORDER BY i.BRANCH_NUM, j.BRANCH_NUM;

-- SELF JOIN
-- Using self join matches customers that are from the same State
SELECT A.LAST_NAME AS CustomerName1, B.LAST_NAME AS CustomerName2, A.STATE
FROM Customer A, Customer B
WHERE A.CUSTOMER_NUM <> B.CUSTOMER_NUM
AND A.STATE = B.STATE
ORDER BY A.STATE;

-- FULL OUTER JOIN
--using full outer join to show all customers who reserved a car in the March and returns null on custumers who did not reserve 
SELECT c.LAST_NAME, c.FIRST_NAME, r.RESERVATION_NUM
FROM CUSTOMER AS c
FULL OUTER JOIN RESERVATIONS AS r ON c.CUSTOMER_NUM = r.CUSTOMER_NUM
ORDER BY r.RESERVATION_NUM;

--Multiple table query to find customers and the vehicles they reserved 
SELECT c.CUSTOMER_NUM, r.RESERVATION_NUM ,c.FIRST_NAME, c.LAST_NAME, r.PICKUP_DATE, v.REG_NUM, v.MAKE, v.MODEL
FROM CUSTOMER AS c, RESERVATIONS AS r, VEHICLE AS v
WHERE c.CUSTOMER_NUM = r.CUSTOMER_NUM
AND r.CATEGORY_NUM = v.CATEGORY_NUM
AND r.REG_NUM = v.REG_NUM
ORDER BY r.PICKUP_DATE, r.RESERVATION_NUM, c.CUSTOMER_NUM;

-- Multiple table query to luxury A and B , SUV vehicle details located at Branch A
SELECT v.REG_NUM, v.MAKE, v.MODEL, v.MODEL_YEAR 
FROM VEHICLE AS v
WHERE v.CATEGORY_NUM IN
(SELECT vc.CATEGORY_NUM
FROM VEHICLE_CATEGORY AS vc, VEHICLE AS v
WHERE vc.CATEGORY_NUM = v.CATEGORY_NUM
AND v.BRANCH_NUM = 1
AND vc.COST_PER_DAY < 150
AND v.MILEAGE < 10000
AND vc.VEHICLE_TYPE = 'SUV'
AND vc.CATEGORY_NAME = 'Luxury_A'
OR vc.CATEGORY_NAME = 'Luxury_B');

--**********************************************************************************************************************************************--
--9. CREATING VIEWS

-- A view of cars with reservation cost that is higher than the average reservation cost 
CREATE VIEW [CARS ABOVE AVERAGE PRICE] AS
SELECT v.MAKE, v.MODEL, v.REG_NUM, vc.CATEGORY_NAME
FROM VEHICLE AS v, VEHICLE_CATEGORY AS vc 
WHERE COST_PER_DAY > (SELECT AVG(COST_PER_DAY) FROM VEHICLE_CATEGORY)
AND v.CATEGORY_NUM = vc.CATEGORY_NUM;

SELECT * FROM [CARS ABOVE AVERAGE PRICE];

-- A view of vehicles that are currently available for reservations on branch 1
CREATE VIEW [AVAILABLE CARS ON BRANCH 1] AS
SELECT REG_NUM, MAKE, MODEL
FROM VEHICLE
WHERE AVAILABILITY = 'Y'
AND BRANCH_NUM = 1;

SELECT * FROM [AVAILABLE CARS ON BRANCH 1];

-- A view of Customers who live in Harare
CREATE VIEW [CUSTOMERS IN HARARE] AS
SELECT  LAST_NAME, FIRST_NAME, City
FROM CUSTOMER
WHERE STATE = 'HARARE';

SELECT * FROM [CUSTOMERS IN HARARE];

--**********************************************************************************************************************************************--
--10. ALETER TABLE

--Adding a membership column on customer table
ALTER TABLE CUSTOMER
ADD MEMBERSHIP VARCHAR (1) DEFAULT 'Y' NOT NULL;

--deleting a column  color from  vehicle table
ALTER TABLE VEHICLE
DROP COLUMN COLOR;

--Adding a phone number column on customer table
ALTER TABLE BRANCH
ADD PHONE_NUM INTEGER;

--**********************************************************************************************************************************************--
--11. INSERT INTO

-- inserting a new customer into customer table
INSERT INTO CUSTOMER 
VALUES('ZW25964GJ', 'Nita','D','Gombakomba','0772212205', 'dr.gombakomba@healthlife.org','6 Corneger Rd','Waterfalls','Harare',026310);

-- inserting a new vehicle into vehicle table
INSERT INTO VEHICLE 
VALUES('AZZ2525','N','Nissan','Altima',2018,16000,6,1);

--**********************************************************************************************************************************************--
--12. UPDATE
--Updating change of address for a customer with Customer number 1003
UPDATE CUSTOMER
SET MIDDLE_NAME = 'B', STREET = '55 Kensington Cl', CITY = 'Malbrough'
WHERE CUSTOMER_NUM = 1003;

--**********************************************************************************************************************************************--
--13. DROP TABLES
DROP TABLE CUSTOMER;

DROP TABLE VEHICLE;

DROP TABLE VEHICLE_CATEGORY;

DROP TABLE RESERVATIONS;

DROP TABLE BRANCH;

--14. DROP VIEWS
DROP VIEW [CARS ABOVE AVERAGE PRICE];

DROP VIEW [AVAILABLE CARS ON BRANCH 1];

DROP VIEW [CUSTOMERS IN HARARE];

--**********************************************************************************************************************************************--