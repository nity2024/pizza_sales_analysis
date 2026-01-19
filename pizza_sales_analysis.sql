-- creating database
create database pizza_sales_analysis;
show databases;


-- Use query for accessing the database
use pizza_sales_analysis;


-- creating table 
create table orders(id int,dates DATE);


-- inserting new column in exsiting table
ALTER TABLE `orders`
ADD COLUMN time TIME AFTER dates;


-- changing a table name
RENAME TABLE `orders` TO orderss; -- order keyword hai aisa error de raha hai


-- Addding constraint to exsiting column
Alter table orderss
ADD PRIMARY KEY (id);


describe orderss;
