# 🗄️ Data Model

## 📌 Database Structure

The system is built on a relational database consisting of four core tables:

### 1. Customers Table
- Customer_ID (Primary Key)
- Name
- Phone
- Email_address
- Location
- Status

### 2. Accounts Table
- Account_ID (Primary Key)
- Customer_ID (Foreign Key)
- Account_Type
- Account_Status
- Balance

### 3. Transactions Table
- Transaction_ID (Primary Key)
- Account_ID (Foreign Key)
- Transaction_Amount
- Transaction_Type
- Transaction_Date
- Location
- Risk_Score

### 3. Fraud_Flag Table
- Flag_ID (Primary Key)
- Transaction_ID (Foreign Key)
- Risk_Score
- Reason
- Flagged_by
  
---

## 🔗 Relationships
- One customer can have multiple accounts  
- One account can have multiple transactions  
- Transactions can be flagged 
---

## 📌 Design Approach
- Normalized schema to reduce redundancy  
- Established primary and foreign keys for data integrity  
- Structured for scalability and analytical querying  
