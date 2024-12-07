# sql-learning-projects

Customer Transaction Pattern Analysis
Project Overview
Basic analysis of customer transaction patterns using fundamental SQL queries. This project demonstrates skills from Introduction to SQL including SELECT, WHERE, ORDER BY, and LIMIT clauses.
Business Problem
Capital One needs to understand:

Which transaction types are most common?
What's the typical transaction range for different customer segments?
Which days see the highest transaction volumes?

Data Used
Sample transaction dataset with the following structure:
sqlCopyCREATE TABLE transactions (
    transaction_id INTEGER,
    customer_id INTEGER,
    transaction_date DATE,
    amount DECIMAL(10,2),
    transaction_type VARCHAR(50)
);
Queries and Analysis
1. Most Common Transaction Types
sqlCopySELECT transaction_type, COUNT(*) as transaction_count
FROM transactions
GROUP BY transaction_type
ORDER BY transaction_count DESC
LIMIT 5;
Findings: [Your analysis here]
2. Transaction Amount Distribution
sqlCopySELECT 
    MIN(amount) as min_amount,
    MAX(amount) as max_amount,
    AVG(amount) as avg_amount
FROM transactions;
Findings: [Your analysis here]
3. Daily Transaction Volume
sqlCopySELECT 
    transaction_date,
    COUNT(*) as daily_transactions
FROM transactions
GROUP BY transaction_date
ORDER BY daily_transactions DESC
LIMIT 10;
Findings: [Your analysis here]
Skills Demonstrated

Basic SQL querying
Data aggregation
Result sorting and limiting
Business insight extraction

Future Improvements

Add more complex analysis using joins (after learning JOIN operations)
Include transaction category analysis
Add visualizations (after learning data viz tools)
