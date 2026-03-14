-- =====================================================
-- UPI Fraud Pattern Analysis
-- Dataset: 15K Transactions
-- =====================================================

-- Check Total Transactions
SELECT COUNT(*) AS total_transactions
FROM transactions;


-- View Sample Data
SELECT *
FROM transactions
LIMIT 10;


--  Total Fraud Transactions
SELECT COUNT(*) AS fraud_transactions
FROM transactions
WHERE fraud_flag = 1;


--  Fraud Rate (%)
SELECT 
COUNT(CASE WHEN fraud_flag = 1 THEN 1 END) * 100.0 / COUNT(*) AS fraud_rate
FROM transactions;


-- Fraud by Location
SELECT 
location,
COUNT(*) AS fraud_cases
FROM transactions
WHERE fraud_flag = 1
GROUP BY location
ORDER BY fraud_cases DESC;


-- Fraud by Merchant
SELECT 
merchant,
COUNT(*) AS fraud_cases
FROM transactions
WHERE fraud_flag = 1
GROUP BY merchant
ORDER BY fraud_cases DESC;


--  Suspicious Devices (devices used by many users)
SELECT 
device_id,
COUNT(DISTINCT user_id) AS users_using_device
FROM transactions
GROUP BY device_id
ORDER BY users_using_device DESC
LIMIT 10;


-- High Risk Users
SELECT 
user_id,
COUNT(*) AS fraud_attempts
FROM transactions
WHERE fraud_flag = 1
GROUP BY user_id
ORDER BY fraud_attempts DESC
LIMIT 10;


-- Transaction Trend Over Time
SELECT 
DATE(transaction_time) AS transaction_date,
COUNT(*) AS total_transactions
FROM transactions
GROUP BY transaction_date
ORDER BY transaction_date;


--  Average Fraud Amount
SELECT 
AVG(amount) AS avg_fraud_amount
FROM transactions
WHERE fraud_flag = 1;


-- Highest Fraud Transactions
SELECT *
FROM transactions
WHERE fraud_flag = 1
ORDER BY amount DESC
LIMIT 10;


--  Top Locations by Total Transactions
SELECT 
location,
COUNT(*) AS total_transactions
FROM transactions
GROUP BY location
ORDER BY total_transactions DESC;


-- Top Merchants by Transaction Volume
SELECT 
merchant,
COUNT(*) AS total_transactions
FROM transactions
GROUP BY merchant
ORDER BY total_transactions DESC;


-- Average Transaction Amount by Merchant
SELECT 
merchant,
AVG(amount) AS avg_transaction_amount
FROM transactions
GROUP BY merchant
ORDER BY avg_transaction_amount DESC;