create table itemmast
(
pro_id int not null,
pro_name varchar(25),
pro_price int,
pro_com int
);

insert into itemmast values(101,'Mother Board',3200.00,15);
insert into itemmast values(102,'Key Board',450,16);
insert into itemmast values(103,'ZIP Drive',250,14);
insert into itemmast values(104,'Speaker',550,16);
insert into itemmast values(105,'Monitor',5000,11);
insert into itemmast values(106,'DVD Drive',900,12);
insert into itemmast values(107,'CD Drive',800,12);
insert into itemmast values(108,'Printer',2600,13);
insert into itemmast values(109,'Refill cartridge',350,13);
insert into itemmast values(110,'Mouse',250,12);

select * from itemmast;

/*
Write sql query to find the items whose prices are higher than or equal 250rs. 
Order the result by product price in descending, then product name in
ascending. Return pro_name and pro_price  
*/
SELECT pro_name, pro_price
FROM itemmast
WHERE pro_price >= 250
ORDER BY pro_price DESC, pro_name ASC;

/*
Write a sql query to find the cheapest item. Return pro_name and pro_price
*/
SELECT pro_name, pro_price
FROM itemmast
WHERE pro_price = (SELECT MIN(pro_price) FROM itemmast);

/*
Write the sql query to calculate the average price of the items for each 
company. Return average price and company code.
*/

SELECT AVG(pro_price) AS average_price, pro_com AS company_code
FROM itemmast
GROUP BY pro_com;

/*
Write the sql query to find the average total for all the product mention in the 
table 
*/

SELECT AVG(pro_price) AS average_price
FROM itemmast;