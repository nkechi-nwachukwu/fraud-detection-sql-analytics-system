INSERT INTO customers(full_name, email, phone, country, status)VALUES
('John Doe', 'john@example.com', '08011111111', 'Nigeria', 'active'),
('Mary Smith', 'mary@example.com', '08022222222', 'Nigeria', 'active'),
('Linda Brown', 'linda@example.com', '08009090911', 'Nigeria', 'active'),
('David Uche', 'uche@example.com', '09145116711', 'Nigeria', 'active'),
('James Itoro', 'itoro@example.com', '08199999991', 'Nigeria', 'active'),
('Utibe Aidan', 'aidan@example.com', '08044441111', 'Nigeria', 'active'),
('Emeka Nwosu', 'nwosu@example.com', '09011889911', 'Nigeria', 'active'),
('Sheriff Musa', 'musa@example.com', '08045811121', 'Nigeria', 'active'),
('Sharon Ada', 'ada@example.com', '09122233322', 'Nigeria', 'active'),
('Chioma Odiba', 'odiba@example.com', '09127000000', 'Nigeria', 'active');

INSERT INTO accounts(customer_id, account_type, balance)VALUES
(1,'savings', 500000),
(2,'current', 1200000),
(3,'savings', 300000),
(4,'savings', 0),
(5,'current', 2500000),
(6,'savings', 800000),
(7,'current', 150000),
(8,'savings', 4000000),
(9,'savings', 600000),
(10,'current', 10000000);

INSERT INTO transactions(account_id, transaction_type, amount, location, device_id, status, risk_score)VALUES
(1, 'deposit', 100000,'Lagos','DEV001','successful',2),
(2, 'deposit', 200000,'Abuja','DEV002','successful',2),
(3, 'withdrawal', 50000,'Lagos','DEV003','successful',3),
(1, 'transfer', 800000,'Abuja','DEV001','successful',8),
(1, 'transfer', 1000000,'Abuja','DEV001','successful',9),
(3, 'transfer', 1500000,'Kogi','DEV003','pending',9),
(2, 'withdrawal', 10000,'Lagos','DEV002','failed',7),
(2, 'withdrawal', 20000,'Lagos','DEV002','reversed',8),
(2, 'withdrawal', 30000,'Lagos','DEV002','blocked',9),
(5, 'transfer', 1800000,'London','DEV005','successful',9),
(5, 'withdrawal', 500000,'London','DEV005','pending',8),
(3, 'transfer', 300000,'Lagos','DEV010','successful',7),
(1, 'transfer', 450000,'Lagos','DEV008','successful',7),
(6, 'deposit', 50000,'Lagos','DEV006','successful',2),
(6, 'transfer', 1600000,'Anambra','DEV006','successful',10),
(8, 'transfer', 3000000,'New York','DEV008','successful',10),
(8, 'withdrawal', 900000,'New York','DEV008','successful',9),
(7, 'deposit', 80000,'Lagos','DEV007','successful',1),
(9, 'transfer', 250000,'Abuja','DEV009','successful',3),
(10, 'withdrawal', 900000,'Abia','DEV010','successful',8),
(10, 'withdrawal', 750000,'Abia','DEV010','successful',9),
(10, 'withdrawal', 700000,'Abia','DEV010','successful',9),
(9, 'transfer', 1000000, 'Kaduna','DEV003', 'failed',7),
(1, 'withdrawal', 200000,'Lagos','DEV001','reversed',8),
(2, 'transfer', 70000,'Abia','DEV002','successful',3),
(3, 'deposit', 700000,'Lagos','DEV003','successful',2),
(4, 'withdrawal', 50000,'Lagos','DEV004','failed',7),
(5, 'deposit', 300000,'London','DEV005','successful',4),
(6, 'withdrawal', 250000,'Abuja','DEV006','successful',5),
(7, 'transfer', 55000,'Anambra','DEV007','successful',3),
(8, 'deposit', 500000,'New York','DEV008','successful',6),
(9, 'withdrawal', 200000,'Lagos','DEV009','successful',4),
(10, 'deposit', 620000,'Toronto','DEV010','successful',5),
(1, 'transfer', 800000,'Abuja','DEV001','pending',7),
(2, 'withdrawal', 100000,'Abia','DEV002','successful',4),
(3, 'withdrawal', 120000,'Lagos','DEV003','successful',5),
(5, 'transfer', 1000000,'London','DEV005','successful',9),
(6, 'transfer', 50000,'Lagos','DEV006','successful',2),
(7, 'withdrawal', 30000,'Lagos','DEV007','successful',2),
(8, 'withdrawal', 800000,'New York','DEV008','successful',8),
(9, 'transfer', 200000,'Lagos','DEV009','successful',3),
(10, 'transfer', 600000,'Toronto','DEV010','successful',7);

INSERT INTO fraud_flags(transaction_id,risk_score,reason,flagged_by)VALUES
(4,8, 'High-value transfer','rule_engine'),
(5,9, 'Repeated high transfers','rule_engine'),
(6,9, 'Transaction under review for unusual activity','system'),
(7,7, 'Failed withdrawal','system'),
(8,8, 'Card testing behaviour','system'),
(9,9, 'Blocked due to high fraud risk','rule_engine'),
(10,9, 'Large international transfer','rule_engine'),
(11,8, 'Unusual foreign transaction location','rule_engine'),
(15,10, 'Extremely high transfer','analyst'),
(16,10, 'Large international transfer','rule_engine'),
(17,9, 'Foreign withdrawal anomaly','rule_engine'),
(20,8, 'High withdrawal','analyst'),
(21,9, 'Repeated high withdrawal','system'),
(22,9, 'Abnormal transaction frequency','system'),
(23,7, 'Failed transfer','system'),
(24,8, 'Suspicious reversal activity','system'),
(27,7, 'Failed withdrawal','system'),
(34,7, 'Transaction under review for unusual activity','system'),
(37,9, 'Large international transfer','rule_engine'),
(40,8, 'Foreign withdrawal anomaly','rule_engine');
























