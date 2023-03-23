-- create table product(
--     productid number(3) primary key,
--     productname varchar2(30),
--     qty number(5,2) check(qty>0),
--     productprice number(9,2)
-- );

-- create table cust(
--     cid number(3) primary key,
--     cname varchar2(30),
--     address varchar2(40),
--     city varchar2(30) default 'Delhi',
--     birthdate date,
--     contactNo varchar2(20)
-- );

-- create table Odr(
--     orderid number(3) primary key,
--     cid number(3) references cust(cid),
--     productid number(3) references product(productid),
--     qtyOrdered number(4)
-- );

-- INSERT INTO Product VALUES (1, 'iPhone13', 50, 999.99);
-- INSERT INTO Product  VALUES (2,'Samsung Galaxy S21', 75, 899.99);
-- INSERT INTO Product  VALUES (3,'MacBook Pro', 25, 1999.99);
-- INSERT INTO Product  VALUES (4, 'Dell XPS13', 30, 1499.99);
-- INSERT INTO Product  VALUES (5, 'GooglePixel 6', 40, 799.99);

-- INSERT INTO Cust  VALUES (1, 'John
-- Doe', '123 Main St', 'New York', '15-Mar-22', '555-1234');
-- INSERT INTO Cust  VALUES (2, 'Jane
-- Smith', '456 Elm St', 'Los Angeles', '25-Nov-21', '555-5678');
-- INSERT INTO Cust  VALUES (3, 'Bob
-- Johnson', '789 Oak St', 'Chicago', '07-Jul-23', '555-9101');
-- INSERT INTO Cust VALUES (4, 'Mary
-- Lee', '234 Pine St', 'San Francisco', '18-Feb-22', '555-1212');
-- INSERT INTO Cust  VALUES (5, 'David
-- Kim', '567 Maple St', 'Houston', '31-Oct-21', '555-1313');

-- INSERT INTO Odr  VALUES (1, 1, 1, 2);
-- INSERT INTO Odr  VALUES (2, 2, 3, 1);
-- INSERT INTO Odr  VALUES (3, 3, 2, 3);
-- INSERT INTO Odr  VALUES (4, 4, 4, 2);
-- INSERT INTO Odr  VALUES (5, 5, 5, 1);

-- 3. Alter product table, ProductPrice should be greater than 5.

-- alter table product modify productprice number(9,2) check(productprice>5);

-- 4. Alter order table, add ordertotal column in the table.

-- alter table odr add ordertotal number(5);

--5. Display all products whose quantity is less than 10.

-- select * from product 
-- where qty < 50;

--6.Display all customer who lives in Mumbai.

-- select * from cust
-- where upper(city) = 'CHICAGO';

--7.Display details of all orders of a customer whose name is ‘Dipesh’.

-- select * from odr 
-- where cid = (select cid from cust where cname like  'M%');
        --or
-- select * from odr
-- join cust
-- on cust.cid = odr.cid
-- where cust.cname like  'M%';

--8.Display order details of all products whose product name contains ‘P’

-- select * from odr
-- where cid in (select cid from cust where cname like 'D%'); 

-- Find suppliers who supplies one red and other green parts

select sname from supplier
where sid = (select sid from catalog where pid = (select pid from parts where color = 'red'))
and sid in (select sid from catalog where pid in (select pid from parts where color = 'green'));

SELECT s.sname FROM Supplier s
JOIN Catalog c1 ON s.sid = c1.sid
JOIN Parts p1 ON c1.pid = p1.pid AND p1.color = 'red'
JOIN Catalog c2 ON s.sid = c2.sid
JOIN Parts p2 ON c2.pid = p2.pid AND p2.color = 'green';