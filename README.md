# sql-sales-performance-analysis
SQL portfolio project analyzing sales performance and customer insights

# SQL Sales Performance & Customer Insights Analysis

## 📌 Project Overview
This project analyzes sales, employee performance, and customer behavior using SQL (MySQL).  
The goal is to demonstrate practical, business-focused data analysis skills including aggregation, joins, window functions, CTEs, and time-series analysis.

This project simulates a real-world business environment where management needs insights into:
- Revenue trends
- Department and employee performance
- Customer value and behavior
- Growth patterns over time

---

## 🗂️ Dataset Structure

### customers
- customer_id
- name
- signup_date
- country

### employees
- employee_id
- employee_name
- department

### orders
- order_id
- customer_id
- employee_id
- order_date
- order_amount

---

## 📊 Business Questions Answered

### Revenue Analysis
- Monthly revenue trends
- Revenue by department
- Month-over-month revenue growth

### Employee Performance
- Total sales per employee
- Top 3 employees by revenue
- Top-performing employee per department
- Ranking employees within each department

### Customer Analytics
- Total spend per customer
- Top 10 customers by lifetime spend
- Customers with no orders
- Customers who ordered in 2024 only

---

## 🛠️ SQL Techniques Used
- GROUP BY & Aggregations
- INNER JOIN & LEFT JOIN
- CTEs (WITH)
- Window Functions (LAG, ROW_NUMBER, DENSE_RANK)
- Conditional Aggregation
- Date Functions
- NULL handling with COALESCE
- Time-series analysis

---

## 📈 Key Business Insights
See detailed insights in:  
📁 `insights/insights.md`

---

## 🚀 Why This Project Matters
This project demonstrates the ability to:
- Translate business questions into SQL queries
- Work with realistic relational schemas
- Write clean, maintainable, production-style SQL
- Think like a data analyst, not just a query writer

---

## 🔧 Tools Used
- MySQL (SQL dialect)
- Git & GitHub
- VS Code
- Ubuntu (WSL)

---

## 👤 Author
Sunday Daniel Friday  
Data Analytics & SQL Portfolio Project
