-- Fraud rate by customers--
Select c.customer_id, c.full_name, count(f.flag_id) AS fraud_cases
From customers c
JOIN accounts a ON c.customer_id=a.customer_id
JOIN transactions t ON a.account_id=t.account_id
JOIN fraud_flags f ON t.transaction_id=f.transaction_id
Group by c.customer_id, c.full_name
Order by fraud_cases DESC;

-- Ranking transaction --
Select transaction_id, account_id, amount, risk_score,
DENSE_RANK() OVER(PARTITION BY account_id ORDER BY risk_score DESC) AS risk_rank
From transactions

-- High risk account classification--
With risk_cte AS(
Select (account_id, AVG(risk_score) AS avg_risk
From transactions
Group by account_id)
Select * 
From risk_cte
Where avg_risk >=7;


-- Suspicious accounts(frequent)--
Select t.account_id, count(f.flag_id) AS fraud_count
From transactions t
JOIN fraud_flags f ON t.transaction_id=f.transaction_id
Group by t.account_id
Having count(f.flag_id)>=2;

-- Fraud by location--
Select t.location, count(f.flag_id) AS fraud_cases
From transactions t
JOIN fraud_flags f ON t.transaction_id=f.transaction_id
Group by t.location
Order by fraud_cases DESC;

-- Rapid transactions detection --
Select account_id, count(*) AS txn_count 
From transactions
Where status IN('failed','reversed','blocked')
GROUP BY account_id, DATE(transaction_date)
HAVING count(*) >=3;

-- Total Fraud Exposure --
Select format(Sum(t.amount),0) AS total_fraud_exposure
From transactions t
Where t.transaction_id IN (Select transaction_id FROM fraud_flags);

-- Transaction frequency --
Select account_id, count(*) AS total_transactions
From transactions t
Group by account_id
Order by total_transactions DESC;

-- Top 3 risk accounts --
Select account_id, max(risk_score) AS avg_risk
From transactions t
Group by account_id
Order by avg_risk DESC
LIMIT 3;

-- Fraud by amount threshold--
DELIMITER //
CREATE PROCEDURE  GetFraudByAmount(IN min_amount DECIMAL(15,2))
BEGIN
     Select transaction_id, account_id, transaction_type, amount,risk_score,status
     From transactions
     Where amount>= min_amount AND risk_score >=7;
END //
DELIMITER ;

CALL GetFraudByAmount(500000);
  
-- Risk score Distribution --
Select risk_score, count(*) AS txn_count 
From transactions
GROUP BY risk_score
Order by risk_score DESC;

-- Customer lifetime risk --
Select c.customer_id, c.full_name, Avg(t.risk_score) AS avg_risk
From customers c
JOIN accounts a ON c.customer_id=a.customer_id
JOIN transactions t ON a.account_id=t.account_id
Group by c.customer_id, c.full_name
Order by avg_risk DESC;
