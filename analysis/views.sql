-- VIEWS--
-- Customer Risk View--
CREATE VIEW Customer_Risk AS
Select c.customer_id, c.full_name, count(f.flag_id) AS fraud_cases
From customers c
JOIN accounts a ON c.customer_id=a.customer_id
JOIN transactions t ON a.account_id=t.account_id
LEFT JOIN fraud_flags f ON t.transaction_id=f.transaction_id
Group by c.customer_id, c.full_name;

-- Account Risk View--
CREATE VIEW Account_Risk AS
Select t.account_id, count(f.flag_id) AS fraud_count,
	 avg(t.risk_score) AS avg_risk
From transactions t
LEFT JOIN fraud_flags f ON t.transaction_id=f.transaction_id
Group by t.account_id;

-- Transaction Behavior View--
CREATE VIEW Transaction_Behavior AS
Select account_id, count(*) AS txn_count,
	  sum(amount) AS total_amount,
    avg(risk_score) AS avg_risk
From transactions
GROUP BY account_id;

-- Fraud Location View--
CREATE VIEW Fraud_Location AS 
Select t.location, count(f.flag_id) AS fraud_cases
From transactions t
JOIN fraud_flags f ON t.transaction_id=f.transaction_id
Group by t.location;

-- Fraud Exposure View--
CREATE VIEW Fraud_Exposure AS
Select format(Sum(t.amount),0) AS total_fraud_exposure
From transactions t
Where t.transaction_id IN (Select transaction_id FROM fraud_flags);

-- High Risk Transaction View--
CREATE VIEW High_Risk_Transaction AS
With risk_cte AS(
Select account_id, AVG(risk_score) AS avg_risk
From transactions
Group by account_id)
Select * 
From risk_cte
Where avg_risk >=7;