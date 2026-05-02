# 🚨 Financial Fraud Detection & Transaction Monitoring System (SQL + Power BI)

## 📌 Project Overview
This project is an end-to-end Financial Fraud Detection and Monitoring System built using SQL and Power BI.
It simulates a real-world fraud detection environment by identifying suspicious transactions, flagging high-risk customers/accounts, and providing actionable insights through an interactive dashboard.

The system combines descriptive analytics, rule-based alerting, and simulated predictive scoring to provide a structured approach to fraud risk management — similar to what is used in fintech and financial institutions.

---
## ## 📊 Dashboard Overview

![Fraud Monitoring Dashboard](images/dashboard_overview.png)


---

## ⚠️ Problem Statement
Financial institutions face:
- Undetected fraudulent transactions
- Lack of real-time monitoring
- Difficulty identifying abnormal behavior patterns
- Limited visibility across accounts and locations

This system addresses these issues using SQL analytics and dashboards.

---
## 🎯 Objectives
- Design a structured financial transactions database
- Identify high-risk customers and accounts
- Detect fraudulent and suspicious transactions using SQL
- Automate alert generation using rule-based logic
- Assign risk scores to prioritize investigations
- Build an interactive dashboard for continuous monitoring
- Enable data-driven decision-making in fraud prevention

---

## 🧠 System Architecture
The solution follows a layered architecture:
## 1. Data Layer (SQL Tables)
- Customers
- Accounts
- Transactions
- Fraud Flags
## 2. Logic Layer (SQL Views)
Developed SQL queries to detect and analyze fraud patterns, including:
- Fraudulent transaction identification
- High-risk customer and account detection
- Transaction anomalies (high value, frequency spikes)
- Geographic fraud concentration
Developed SQL views to support segmentation and fraud scoring patterns, including:
- Transaction enrichment (frequency analysis using window functions)
- Rule-based alert system
- Predictive fraud scoring model
- Unified analytical dataset for reporting
## 3. Visualization Layer (Power BI)
- Interactive dashboards for monitoring fraud risk
- KPI tracking and drill-down analysis

---

### 🚨 Rule-Based Alert System

A SQL-driven alert engine was implemented to automatically flag suspicious transactions.

## 🔍 Alert Conditions
- High transaction value (> ₦500,000)
- High transaction frequency per account (velocity proxy)
- Elevated transaction risk score
## ⚙️ Implementation
- SQL CASE logic used to define alert conditions
- Window functions applied to calculate transaction frequency
- Multiple alert flags allow a single transaction to trigger several alerts
## 📈 Outcome
- Real-time identification of suspicious transactions
- Improved fraud visibility across the system
- Structured alert pipeline for monitoring and investigation

---
## 🔮 Predictive Fraud Scoring (Simulated)
A weighted scoring model was developed in SQL to simulate predictive fraud detection.

## 🧮 Methodology
Each transaction is assigned a fraud risk score (0–100) based on:

- Transaction amount
- Transaction frequency
- Existing risk indicators

## 🧾 Risk Classification
- High Risk
- Medium Risk
- Low Risk
## 📈 Outcome
- Enables prioritization of high-risk transactions
- Simulates predictive analytics without machine learning
- Provides a foundation for future model expansion

## 📊 Power BI Dashboard

The system is visualized through an interactive dashboard structured into multiple analytical layers:

## 🧩 Dashboard Pages
### 1. Overview – Fraud Monitoring Dashboard
- Total fraud exposure
- Fraud cases
- Risk distribution
- Risky customers
### 2. Customer & Account Risk Dashboard
- High-risk customers
- Account-level risk scoring
- Customer segmentation
analysis
### 3. Transaction Behavior Analysis
- Transaction frequency patterns
- Rapid transactions detection
- Amount-based risk scatter
### 4. Fraud Detection & Location Analysis
- Fraud hotspots
- Geographic distribution
- High-risk locations
### 5. Alerts Monitoring 
- Alert counts by type
- High-risk flagged transactions
- Alert trends and breakdown
### 6. Risk Scoring 
- Risk score distribution
- High-risk transaction identification
- Risk category analysis
---

## 🧠 Data Modeling (SQL Views)

This project includes advanced SQL views:

- Customer Risk View
- Account Risk View
- Transaction Behavior Risk View
- Fraud Location Analysis View
- Fraud Exposure View
- High-Risk Transaction View
- Fraud Alert View
- Fraud Scoring Model
- Unified Fraud Dataset

These views support segmentation and fraud scoring logic.

---
## 🛠️ Tools & Technologies
- SQL - (data modeling, window functions, rule-based logic, predictive scoring)
- Power BI -(data visualization, KPI monitoring, interactive dashboards)

---
## 📂 Repository Structure
/sql/             → SQL schema, tables, queries and views  
/dashboard/       → Power BI dashboard file  
/data/            → Simulated dataset and ERD 
/documentation/   → Project documentation  
/README.md/

---
## 🚀 Key Features
- End-to-end fraud monitoring workflow
- Rule-based alert generation
- Multi-factor risk scoring model
- Interactive and business-ready dashboards
- Scalable SQL-based architecture

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
- Risk scoring improves prioritization of investigation efforts

---

## 🔄 System Evolution
This project evolved from:
## Basic Fraud Detection Dashboard
⬇
## Fraud Monitoring System with Alerts & Risk Scoring

This progression demonstrates the transition from:
- ## Descriptive analytics → What happened
  to
- ## Diagnostic & predictive logic → What requires attention and what may happen next

---
## 📌 How to Use
1. Run SQL scripts to create tables and views
2. Load the final dataset into Power BI
3. Open the dashboard file
4. Interact with filters and visuals to explore fraud patterns

---
##  🚀 Future Improvements
- Real-time fraud detection pipeline
- Machine learning-based fraud scoring
- Automated alert notifications (email/SMS)
- Add geolocation-based fraud detection
- API integration for live transaction monitoring

---

## 👤 Author
Nkechi Nwachukwu
Data Analyst | SQL | Power BI | Fraud Detection | Financial Analytics
