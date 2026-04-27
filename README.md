# 🚨 Financial Fraud Detection & Transaction Monitoring System (SQL + Power BI)

## 📌 Project Overview
This project is an end-to-end Financial Fraud Detection and Monitoring System built using SQL and Power BI.
It simulates a real-world fraud detection environment by identifying suspicious transactions, flagging high-risk customers/accounts, and providing actionable insights through an interactive dashboard.

⚡ Built from scratch — including database design, data generation, SQL modeling, fraud logic, and dashboard development.
---

## 🎯 Objectives
- Design a structured financial transactions database
- Detect fraudulent and suspicious transactions using SQL
- Identify high-risk customers and accounts
- Create analytical views for risk segmentation
- Visualize fraud insights using Power BI dashboards
- Simulate fraud alerts and predictive risk scoring

---

## ⚠️ Problem Statement
Financial institutions face:
- Undetected fraudulent transactions
- Lack of real-time monitoring
- Difficulty identifying abnormal behavior patterns
- Limited visibility across accounts and locations

This system addresses these issues using SQL analytics and dashboards.

---

## 🗄️ Database Design
I designed and implemented a relational database system with the following tables:

- Customers
- Accounts
- Transactions
- Fraud_Flags

---

### Key Features:
- Defined relationships between entities
- Generated and inserted simulated financial data
- Ensured data consistency and integrity
- Structured data for efficient querying and analysis

  ## 🧠 Key SQL Techniques Used
- Aggregations (SUM, COUNT, AVG)
- CASE WHEN logic for risk classification
- Window functions for behavior tracking
- GROUP BY analysis
- VIEW creation for modular analytics
- Filtering for fraud detection rules

---

##  ⚙️ Fraud Detection (SQL Logic)

Developed SQL queries to detect and analyze fraud patterns, including:

- Fraudulent transaction identification
- High-risk customer and account detection
- Transaction anomalies (high value, frequency spikes)
- Geographic fraud concentration

---
## 🧠 Data Modeling (SQL Views)

This project includes advanced SQL views:

- Customer Risk View
- Account Risk View
- Transaction Behavior Risk View
- Fraud Location Analysis View
- Fraud Exposure View
- High-Risk Transaction View

These views support segmentation and fraud scoring logic.

---

## 📈 Dashboards (Power BI)
Built an interactive fraud monitoring dashboard to visualize key insights.

### 1. Overview – Fraud Monitoring Dashboard
- Total fraud exposure
- Fraud cases
- Risk distribution
- Risky customers

### 2. Customer & Account Risk Dashboard
- High-risk customers
- Account-level risk scoring
- Customer segmentation

### 3. Transaction Behavior Analysis
- Transaction frequency patterns
- Rapid transactions detection
- Amount-based risk scatter analysis

### 4. Fraud Detection & Location Analysis
- Fraud hotspots
- Geographic distribution
- High-risk locations

---
## Key Metrics:

- Total Fraud Exposure: 17.36M
- Fraud Rate: 47.6%
- High-Risk Accounts: Dynamically tracked
- Risk Score Distribution
  
---

## 📊 Key Insights
- Certain locations show higher fraud concentration
- Small % of customers contribute to majority of risk
- Rapid transaction patterns indicate suspicious behavior
- High-value transactions correlate with elevated risk scores

---
## 🚨 Fraud Alert System (Rule-Based)

Implemented SQL-based alert logic to simulate real-time fraud monitoring:

-High transaction amount + high risk score
-Rapid transaction frequency
-Abnormal geographic activity

➡️ Enables quick identification of high-risk transactions.
---

## 🔮 Predictive Fraud Scoring (Simulated)
Built a weighted scoring model using SQL to estimate fraud probability based on:
-Transaction amount
-Risk score
-Transaction frequency
-Geographic patterns

➡️ Helps prioritize transactions for investigation.

---

## 🛠️ Tools Used
- SQL (MySQL)
- Power BI
- GitHub (version control)

---

## 📂 Repository Structure
/sql/             → SQL schema, tables, queries and views  
/dashboard/       → Power BI dashboard file  
/data/            → Simulated dataset and ERD 
/documentation/   → Project documentation  

--- 

##  🚀 Future Improvements
- Real-time fraud detection pipeline
- Machine learning-based fraud scoring
- Automated alert notifications (email/SMS)
- API integration for live transaction monitoring

---

## 👩‍💻 Author
Nkechi Nwachukwu
Data Analyst | SQL | Power BI | Fraud Analytics
