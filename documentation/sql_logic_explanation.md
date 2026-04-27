# 🔍 SQL Logic Explanation

## 📌 Fraud Detection Logic

SQL queries were developed to identify fraud patterns across multiple dimensions:

---

### 1. Fraud Identification
- Filter transactions where Fraud_Flag = TRUE  
- Analyze distribution of fraudulent transactions  

---

### 2. High-Risk Customers
Customers with:
- High risk scores  
- Multiple fraud-linked transactions  

---

### 3. High-Risk Accounts
Accounts associated with:
- Frequent suspicious transactions  
- High total fraud exposure  

---

### 4. Behavioral Analysis
- Rapid transactions within short time intervals  
- Repeated transactions with similar amounts  
- Sudden spikes in transaction values  

---

### 5. Geographic Analysis
- Identify locations with high fraud concentration  
- Detect unusual cross-location activity  

---

## 📌 Optimization
- Used SQL views to simplify repeated queries  
- Improved performance for dashboard integration  
