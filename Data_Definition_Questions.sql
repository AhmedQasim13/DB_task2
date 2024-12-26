--Data Definition Questions: (using SQL NOT GUI)
create database qasimtest
use qasimtest
--
--1.	Create a table named "Employees" with columns for ID (integer), Name (varchar), and Salary (decimal).
create table Employee(
ID int,
Name varchar(50),
Salary decimal,
)
--
--2.	Add a new column named "Department" to the "Employees" table with data type varchar(50).
alter table Employee
add Department varchar(50)
--
--3.	Remove the "Salary" column from the "Employees" table.
alter table Employee
drop column Salary
--
--4.	Rename the "Department" column in the "Employees" table to "DeptName".
EXEC sp_rename 'Employee.Department', 'DeptName';
--
--5.	Create a new table called "Projects" with columns for ProjectID (integer) and ProjectName (varchar).
create table Projects (
ProjectID int,
ProjectName varchar(50),
)
--
--6.	Add a primary key constraint to the "Employees" table for the "ID" column.
--first make the column not null
alter table Employee
alter column ID int NOT NULL;
--add primary key
alter table Employee
add constraint PK Primary key(ID);
--
--7.	Add a unique constraint to the "Name" column in the "Employees" table.
alter table Employee
add constraint UNIQUE1 UNIQUE (Name);
--
--8.	Create a table named "Customers" with columns for CustomerID (integer), FirstName (varchar), LastName (varchar), and Email (varchar), and Status (varchar).
CREATE TABLE Customers (
CustomerID int PRIMARY KEY,
FirstName varchar(50),
LastName varchar(50),
Email varchar(50),
Status varchar,
)
--
--9.	Add a unique constraint to the combination of "FirstName" and "LastName" columns in the "Customers" table.
alter table Customers
add constraint UNIQUE2 UNIQUE (FirstName,LastName);
--
--10.	Create a table named "Orders" with columns for OrderID (integer), CustomerID (integer), OrderDate (datetime), and TotalAmount (decimal).
create table Orders(
OrderID integer,
CustomerID integer,
OrderDate datetime,
TotalAmount decimal
)
--
--11.	Add a check constraint to the "TotalAmount" column in the "Orders" table to ensure that it is greater than zero.
alter table Orders
add constraint Check1 check(TotalAmount>0);
--
--12.	Create a schema named "Sales" and move the "Orders" table into this schema.
create schema Sales
alter schema Sales transfer Orders
--13.	Rename the "Orders" table to "SalesOrders."
EXEC sp_rename 'Sales.Orders', 'SalesOrders';
---------------------------------------------------------------------------------------------------------------------------------------------------------------