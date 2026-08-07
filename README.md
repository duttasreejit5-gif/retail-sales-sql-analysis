# 🛒 Retail Sales Analytics using SQL

---

## 📊 Project Overview

This project analyzes retail sales data using SQL to generate meaningful business insights related to product performance, customer segmentation, and customer behaviour.

The goal of this project is to simulate a real-world data analyst workflow, starting from raw data cleaning to exploratory data analysis and finally solving key business problems.

---

## 🗂️ Dataset Description

The dataset consists of three main tables:

### 1. sales_transaction_clean
- TransactionID  
- CustomerID  
- ProductID  
- QuantityPurchased  
- TransactionDate  
- Price  

### 2. customer_profiles
- CustomerID  
- Age  
- Gender  
- Location  
- JoinDate  

### 3. product_inventory
- ProductID  
- ProductName  
- Category  
- StockLevel  
- Price  

---

## 📁 Project Structure

01_Data_Cleaning.sql
02_Exploratory_Data_Analysis.sql
03_Business_Analysis.sql
README.md


---

## 🛠️ Tools & Skills Used

- SQL (MySQL)
- Data Cleaning
- Data Analysis
- Joins (INNER JOIN, LEFT JOIN)
- Aggregation (SUM, AVG, COUNT)
- Window Functions (DENSE_RANK)
- Common Table Expressions (CTEs)
- Business Problem Solving

---

## 🧹 Data Cleaning

- Removed duplicate records from transaction data  
- Handled missing values  
- Fixed column encoding issues (BOM characters)  
- Converted TransactionDate to proper DATE format  
- Verified data consistency using counts and checks  

---

## 🔍 Exploratory Data Analysis

Performed analysis to understand:

- Total revenue generated  
- Total units sold  
- Product-wise performance  
- Customer-wise activity  
- Monthly, yearly, and quarterly sales trends  
- Day-wise patterns  

---

## 📈 Business Analysis

### 🛍️ Product Performance
- Identified top revenue-generating products  
- Found best-selling products  
- Analyzed product-wise revenue and quantity sold  

### 👥 Customer Segmentation
- Segmented customers based on activity and spending  
- Identified repeat customers  

### 📊 Customer Behaviour
- Found top customers by revenue  
- Analyzed transactions per customer  
- Revenue analysis by gender and age group  
- Calculated Average Order Value (AOV)  
- Created customer loyalty ranking  

---

## 💡 Key Insights

- A small group of customers contributes a large portion of total revenue  
- Certain products dominate sales performance  
- Repeat customers drive consistent revenue  
- Sales trends vary across months and quarters  
- Customer segmentation helps in targeted marketing  

---

## 🚀 How to Run

1. Create database:
   ```sql
   CREATE DATABASE retail_analytics;
Import datasets into tables
Run files in order:
01_Data_Cleaning.sql
02_Exploratory_Data_Analysis.sql
03_Business_Analysis.sql

✅ Conclusion
This project demonstrates how SQL can be used to clean, analyze, and extract valuable business insights from raw data.
It highlights the importance of structured analysis and business thinking in solving real-world problems.

👤 Author
Sreejit Dutta
Aspiring Data Analyst
