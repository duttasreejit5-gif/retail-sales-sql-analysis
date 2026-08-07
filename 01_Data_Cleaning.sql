CREATE DATABASE retail_analytics;
use retail_analytics;
select * from product_inventory;
select * from customer_profiles;
select * from sales_transaction;
select count(*) as Total_Products
from product_inventory;
select count(*) as Total_Customers
from customer_profiles;
select count(*) as Total_Transactions
from sales_transaction;
describe product_inventory;
describe customer_profiles;
describe sales_transaction;
alter table product_inventory
change column `ï»¿ProductID` ProductID INT;
alter table customer_profiles
change column `ï»¿CustomerID` CustomerID INT;
alter table sales_transaction
change column `ï»¿TransactionID` TransactionID INT;
describe product_inventory;
describe customer_profiles;
describe sales_transaction;
select count(*) as Missing_Records from customer_profiles
where CustomerID is null
	or Age is null
	or Gender is null
    or Location is null
    or JoinDate is null;
select count(*) as Missing_Records from product_inventory
where ProductID is null
	or ProductName is null
    or Category is null
    or StockLevel is null
    or Price is null;
select count(*) as Missing_Records from sales_transaction
where TransactionID is null
	or CustomerID is null
    or ProductID is null
    or QuantityPurchased is null
    or TransactionDate is null
    or Price is null;
select CustomerID , count(*) as Total
from customer_profiles
group by CustomerID
having count(*) >1;

select ProductID , count(*) as Total
from product_inventory
group by ProductID
having count(*) >1;

select TransactionID , count(*) as Total
from sales_transaction
group by TransactionID
having count(*) >1;

select * from sales_transaction
where TransactionID in (4999,5000)
order by TransactionID;

create table sales_transaction_clean as
select distinct *
from sales_transaction;

select count(*)
from sales_transaction;

select count(*)
from sales_transaction_clean;

SELECT
    MIN(STR_TO_DATE(TransactionDate,'%d/%m/%y')) AS Start_Date,
    MAX(STR_TO_DATE(TransactionDate,'%d/%m/%y')) AS End_Date
FROM sales_transaction_clean;

UPDATE sales_transaction_clean
SET TransactionDate = STR_TO_DATE(TransactionDate, '%d/%m/%y');

ALTER TABLE sales_transaction_clean
MODIFY COLUMN TransactionDate DATE;