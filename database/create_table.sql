DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers(customer_id INT AUTO_INCREMENT PRIMARY KEY, 
full_name VARCHAR(100) NOT NULL, email VARCHAR(50) UNIQUE NOT NULL,
phone VARCHAR(20) UNIQUE, country VARCHAR(50) DEFAULT 'Nigeria',
status VARCHAR(20) CHECK (status IN ('active','inactive')),
created_at DATE DEFAULT(current_date));

DROP TABLE IF EXISTS Accounts;
CREATE TABLE Accounts(account_id INT AUTO_INCREMENT PRIMARY KEY, 
customer_id INT, account_type VARCHAR(50) NOT NULL,
balance DECIMAL (15,2) DEFAULT 0 CHECK (balance>=0), 
created_at DATE DEFAULT(current_date), FOREIGN KEY (customer_id) REFERENCES customers(customer_id));

DROP TABLE IF EXISTS Transactions;
CREATE TABLE Transactions(transaction_id INT AUTO_INCREMENT PRIMARY KEY, 
account_id INT NOT NULL, transaction_type VARCHAR(20) NOT NULL CHECK (transaction_type IN ('deposit','withdrawal','transfer')), 
amount DECIMAL (15,2)NOT NULL CHECK (amount > 0),
transaction_date TIMESTAMP DEFAULT current_timestamp, location VARCHAR(100), device_id VARCHAR(100),
status VARCHAR(20) DEFAULT 'pending' CHECK  (status IN ('successful','failed','pending','reversed','blocked')), 
risk_score INT DEFAULT 1 CHECK (risk_score BETWEEN 1 AND 10), created_at TIMESTAMP DEFAULT current_timestamp,
FOREIGN KEY (account_id) REFERENCES accounts(account_id)); 

DROP TABLE IF EXISTS Fraud_flags;
CREATE TABLE Fraud_flags(flag_id INT AUTO_INCREMENT PRIMARY KEY, 
transaction_id INT NOT NULL, risk_score INT NOT NULL CHECK (risk_score BETWEEN 1 AND 10), 
reason VARCHAR(200) NOT NULL, flagged_by VARCHAR(50) DEFAULT 'system' CHECK (flagged_by IN ('system','analyst','rule_engine')),
flagged_at TIMESTAMP DEFAULT current_timestamp,
FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id) ON DELETE CASCADE); 