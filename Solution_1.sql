-- ---q1 ------
create database week10_assignment;
use week10_assignment;

CREATE TABLE SUPPLIER (
	SUPP_ID INTEGER PRIMARY KEY,
	SUPP_NAME VARCHAR(50) NOT NULL,
	SUPP_CITY VARCHAR(50) NOT NULL,
	SUPP_PHONE VARCHAR(50) NOT NULL
);

CREATE TABLE CUSTOMER (
	CUS_ID INTEGER PRIMARY KEY,
    CUS_NAME VARCHAR(20) NOT NULL,
    CUS_PHONE VARCHAR(10) NOT NULL,
    CUS_CITY VARCHAR(30) NOT NULL,
    CUS_GENDER CHAR
);

CREATE TABLE CATEGORY (
	CAT_ID INTEGER PRIMARY KEY,
    CAT_NAME VARCHAR(20) NOT NULL
);

CREATE TABLE PRODUCT (
	PRO_ID INTEGER PRIMARY KEY,
    PRO_NAME VARCHAR(20) NOT NULL DEFAULT "DUMMY",
    PRO_DESC VARCHAR(60),
    CAT_ID INTEGER, 
    FOREIGN KEY (CAT_ID) REFERENCES CATEGORY (CAT_ID)
);

CREATE TABLE SUPPLIER_PRICING (
	PRICING_ID INTEGER PRIMARY KEY,
    PRO_ID INTEGER,
    SUPP_ID INTEGER,
    FOREIGN KEY(PRO_ID) references PRODUCT(PRO_ID),
    FOREIGN KEY(SUPP_ID) references SUPPLIER(SUPP_ID),
    SUPP_PRICE INTEGER DEFAULT 0
);

CREATE TABLE ORDER_ (
	ORD_ID INTEGER PRIMARY KEY,
	ORD_AMOUNT INTEGER NOT NULL,
    ORD_DATE DATE NOT NULL,
    CUS_ID INTEGER,
    PRICING_ID INTEGER,
    FOREIGN KEY(CUS_ID) references CUSTOMER(CUS_ID),
    FOREIGN KEY(PRICING_ID) references SUPPLIER_PRICING(PRICING_ID)
);

CREATE TABLE RATING (
	RAT_ID INTEGER PRIMARY KEY,
    ORD_ID INTEGER,
    FOREIGN KEY(ORD_ID) references ORDER_(ORD_ID),
    RAT_RATSTARS INTEGER NOT NULL
);

-- 2nd q
INSERT INTO SUPPLIER VALUES(1, "Rajesh Retails", "Delhi",  "1234567890");
INSERT INTO SUPPLIER VALUES(2, "Appario Ltd.", "Mumbai",  "2589631470");
INSERT INTO SUPPLIER VALUES(3, "RKnome products ", "Banglore",  "9785462315");
INSERT INTO SUPPLIER VALUES(4, "Bansal Retails ", "Kochi",  "8975463285");
INSERT INTO SUPPLIER VALUES(5, "Mittal Ltd.", "Lucknow",  "7898456532");

INSERT INTO CUSTOMER VALUES(1, "AAKASH", "9999999999",  "DELHI", 'M');
INSERT INTO CUSTOMER VALUES(2, "AMAN", "9785463215",  "NOIDA", 'M');
INSERT INTO CUSTOMER VALUES(3, "NEHA", "9999999999",  "MUMBAI", 'F');
INSERT INTO CUSTOMER VALUES(4, "MEGHA", "9994562399",  "KOLKATA", 'F');
INSERT INTO CUSTOMER VALUES(5, "PULKIT", "Lucknow",  "LUCKNOW", 'M');

INSERT INTO CATEGORY VALUES(1, "BOOKS");
INSERT INTO CATEGORY VALUES(2, "GAMES");
INSERT INTO CATEGORY VALUES(3, "GROCERIES");
INSERT INTO CATEGORY VALUES(4, "ELECTRONICS");
INSERT INTO CATEGORY VALUES(5, "CLOTHES");

INSERT INTO PRODUCT VALUES (1, "GTA V", "Windows 7 and above with i5 processor and 8GB RAM", 2);
INSERT INTO PRODUCT VALUES (2, "TSHIRT", "SIZE-L with Black, Blue and White variations ", 5);
INSERT INTO PRODUCT VALUES (3, "ROG LAPTOP", "Windows 10 with 15inch screen, i7 processor, 1TB SSD", 4);
INSERT INTO PRODUCT VALUES (4, "OATS", "Highly Nutritious from Nestle ", 3);
INSERT INTO PRODUCT VALUES (5, "HARRY POTTER", "Best Collection of all time by J.K Rowling", 1);
INSERT INTO PRODUCT VALUES (6, "MILK", "1L Toned MIlk ", 3);
INSERT INTO PRODUCT VALUES (7, "Boat Earphones", "1.5Meter long Dolby Atmos ", 4);
INSERT INTO PRODUCT VALUES (8, "Jeans", "Stretchable Denim Jeans with various sizes and color", 5);
INSERT INTO PRODUCT VALUES (9, "Project IGI", "compatible with windows 7 and above", 2);
INSERT INTO PRODUCT VALUES (10, "Hoodie", "Black GUCCI for 13 yrs and above", 5);
INSERT INTO PRODUCT VALUES (11, "Rich Dad Poor Dad", "Written by RObert Kiyosaki ", 1);
INSERT INTO PRODUCT VALUES (12, "Train Your Brain", "By Shireen Stephen ", 1);

INSERT INTO SUPPLIER_PRICING VALUES (1, 1, 2, 1500);
INSERT INTO SUPPLIER_PRICING VALUES (2, 3, 5, 30000);
INSERT INTO SUPPLIER_PRICING VALUES (3, 5, 1, 3000);
INSERT INTO SUPPLIER_PRICING VALUES (4, 2, 3, 2500);
INSERT INTO SUPPLIER_PRICING VALUES (5, 4, 1, 1000);
INSERT INTO SUPPLIER_PRICING VALUES (6, 12, 2, 780);
INSERT INTO SUPPLIER_PRICING VALUES (7, 12, 4, 789);
INSERT INTO SUPPLIER_PRICING VALUES (8, 3, 1, 31000);
INSERT INTO SUPPLIER_PRICING VALUES (9, 1, 5, 1450);
INSERT INTO SUPPLIER_PRICING VALUES (10, 4, 2, 999);
INSERT INTO SUPPLIER_PRICING VALUES (11, 7, 3, 549);
INSERT INTO SUPPLIER_PRICING VALUES (12, 7, 4, 529);
INSERT INTO SUPPLIER_PRICING VALUES (13, 6, 2, 105);
INSERT INTO SUPPLIER_PRICING VALUES (14, 6, 1, 99);
INSERT INTO SUPPLIER_PRICING VALUES (15, 2, 5, 2999);
INSERT INTO SUPPLIER_PRICING VALUES (16, 5, 2, 2999);

INSERT INTO ORDER_ VALUES (101, 1500, '2021-10-06', 2, 1);
INSERT INTO ORDER_ VALUES (102, 1000, '2021-10-12', 3, 5);
INSERT INTO ORDER_ VALUES (103, 30000, '2021-09-16', 5, 2);
INSERT INTO ORDER_ VALUES (104, 1500, '2021-10-05', 1, 1);
INSERT INTO ORDER_ VALUES (105, 3000, '2021-08-16', 4, 3);
INSERT INTO ORDER_ VALUES (106, 1450, '2021-08-18', 1, 9);
INSERT INTO ORDER_ VALUES (107, 789, '2021-09-01', 3, 7);
INSERT INTO ORDER_ VALUES (108, 780, '2021-01-07', 5, 6);
INSERT INTO ORDER_ VALUES (109, 3000, '2021-09-10', 5, 3);
INSERT INTO ORDER_ VALUES (110, 2500, '2021-09-10', 2, 4);
INSERT INTO ORDER_ VALUES (111, 1000, '2021-09-15', 4, 5);
INSERT INTO ORDER_ VALUES (112, 789, '2021-09-16', 4, 7);
INSERT INTO ORDER_ VALUES (113, 31000, '2021-09-16', 1, 8);
INSERT INTO ORDER_ VALUES (114, 1000, '2021-09-16', 3, 5);
INSERT INTO ORDER_ VALUES (115, 3000, '2021-09-16', 5, 3);
INSERT INTO ORDER_ VALUES (116, 99, '2021-09-17', 2, 14);

INSERT INTO RATING VALUES (1, 101, 4);
INSERT INTO RATING VALUES (2, 102, 3);
INSERT INTO RATING VALUES (3, 103, 1);
INSERT INTO RATING VALUES (4, 104, 2);
INSERT INTO RATING VALUES (5, 105, 4);
INSERT INTO RATING VALUES (6, 106, 3);
INSERT INTO RATING VALUES (7, 107, 4);
INSERT INTO RATING VALUES (8, 108, 4);
INSERT INTO RATING VALUES (9, 109, 3);
INSERT INTO RATING VALUES (10, 110, 5);
INSERT INTO RATING VALUES (11, 111, 3);
INSERT INTO RATING VALUES (12, 112, 4);
INSERT INTO RATING VALUES (13, 113, 2);
INSERT INTO RATING VALUES (14, 114, 1);
INSERT INTO RATING VALUES (15, 115, 1);
INSERT INTO RATING VALUES (16, 116, 0);


-- 3rd q
SELECT C.CUS_GENDER, COUNT(DISTINCT C.CUS_ID) AS NO_OF_CUSTOMERS
FROM ORDER_ O
JOIN CUSTOMER C ON O.CUS_ID = C.CUS_ID
WHERE O.ORD_AMOUNT >= 3000
GROUP BY C.CUS_GENDER;

-- 4th q
SELECT o.*, p.PRO_NAME
FROM order_ o
JOIN supplier_pricing sp ON o.PRICING_ID = sp.PRICING_ID
JOIN product p ON sp.PRO_ID = p.PRO_ID
WHERE CUS_ID = 2;

-- 5th q
SELECT * FROM supplier s
WHERE (SELECT COUNT(*) FROM supplier_pricing WHERE supp_id = s.supp_id) > 1;

-- 6th q
CREATE VIEW lowest_expensive_product AS
SELECT c.cat_id, c.cat_name, MIN(sp.supp_price) AS min_price, p.pro_name
FROM category c
JOIN product p ON c.cat_id = p.cat_id
JOIN supplier_pricing sp ON p.pro_id = sp.pro_id
GROUP BY c.cat_id, c.cat_name, p.pro_name;
SELECT * FROM lowest_expensive_product;   -- Printing the table

-- 7th q
SELECT pro_id, pro_name FROM product
WHERE EXISTS (
    SELECT 1 FROM order_ o
    JOIN rating r ON o.ord_id = r.ord_id
    JOIN supplier_pricing sp ON o.pricing_id = sp.pricing_id
    WHERE o.ord_date > '2021-10-05' AND sp.pro_id = product.pro_id
);

-- 8th q
SELECT cus_name, cus_gender
FROM customer
WHERE LOWER(SUBSTR(cus_name, 1, 1)) IN ('a', 'z')
OR LOWER(SUBSTR(cus_name, -1)) IN ('a', 'z');

-- 9th q
DELIMITER //
CREATE PROCEDURE SupplierRating()
BEGIN
    SELECT S.SUPP_ID, S.SUPP_NAME, AVG(R.RAT_RATSTARS) as 'Average Rating', 
    CASE
        WHEN AVG(R.RAT_RATSTARS) = 5 THEN 'Excellent Service'
        WHEN AVG(R.RAT_RATSTARS) > 4 THEN 'Good Service'
        WHEN AVG(R.RAT_RATSTARS) > 2 THEN 'Average Service'
        ELSE 'Poor Service'
    END as 'Type_of_Service'
    FROM Supplier S
    JOIN Product P ON S.SUPP_ID = P.SUPP_ID
    JOIN Order_ O ON P.PRO_ID = O.PRO_ID
    JOIN Rating R ON O.ORD_ID = R.ORD_ID
    GROUP BY S.SUPP_ID, S.SUPP_NAME;
END //
DELIMITER ;

show tables;
select * from category;