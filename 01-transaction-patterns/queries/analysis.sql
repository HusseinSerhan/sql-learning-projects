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

-- 6. Average transaction amount by merchant category
SELECT 
    merchant_category,
    AVG(amount) as avg_amount,
    COUNT(*) as number_of_transactions
FROM transactions
WHERE transaction_type = 'purchase'
GROUP BY merchant_category
ORDER BY avg_amount DESC;

-- 7. Transactions per customer
SELECT 
    customer_id,
    COUNT(*) as transaction_count
FROM transactions
GROUP BY customer_id
ORDER BY transaction_count DESC;

-- 8. Look at spending patterns by time
SELECT 
    transaction_date,
    COUNT(*) as num_transactions,
    SUM(amount) as total_amount
FROM transactions
WHERE transaction_type = 'purchase'
GROUP BY transaction_date
ORDER BY transaction_date;

-- 9. Average transaction by age group
SELECT 
    CASE 
        WHEN age < 30 THEN '20s'
        WHEN age < 40 THEN '30s'
        ELSE '40s'
    END as age_group,
    AVG(t.amount) as avg_amount
FROM customers c
JOIN transactions t ON c.customer_id = t.customer_id
WHERE t.transaction_type = 'purchase'
GROUP BY 
    CASE 
        WHEN age < 30 THEN '20s'
        WHEN age < 40 THEN '30s'
        ELSE '40s'
    END
ORDER BY age_group;
