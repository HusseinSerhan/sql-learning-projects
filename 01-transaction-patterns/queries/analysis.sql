-- Basic exploratory analysis of transaction patterns
-- Created: December 2024

-- 1. View all customer information
SELECT *
FROM customers;

-- 2. Look at all transactions
SELECT *
FROM transactions;

-- 3. Count total number of transactions
SELECT COUNT(*) as total_transactions
FROM transactions;

-- 4. Find unique transaction types
SELECT DISTINCT transaction_type
FROM transactions;

-- 5. Get average transaction amount
SELECT AVG(amount) as average_amount
FROM transactions;
