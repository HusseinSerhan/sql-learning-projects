-- Create tables
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    age INTEGER,
    state VARCHAR(2),
    credit_score INTEGER,
    join_date DATE
);

CREATE TABLE transactions (
    transaction_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    transaction_date DATE,
    amount DECIMAL(10,2),
    transaction_type VARCHAR(50),
    merchant_category VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert sample customer data
INSERT INTO customers (customer_id, age, state, credit_score, join_date) VALUES
(1, 25, 'NY', 720, '2023-01-15'),
(2, 35, 'CA', 680, '2023-02-20'),
(3, 45, 'TX', 750, '2023-01-10'),
(4, 30, 'FL', 700, '2023-03-05'),
(5, 28, 'NY', 690, '2023-02-01');

-- Insert sample transaction data
INSERT INTO transactions (transaction_id, customer_id, transaction_date, amount, transaction_type, merchant_category) VALUES
(1, 1, '2023-12-01', 25.50, 'purchase', 'restaurants'),
(2, 1, '2023-12-01', 500.00, 'purchase', 'electronics'),
(3, 2, '2023-12-01', 75.25, 'purchase', 'groceries'),
(4, 3, '2023-12-02', 150.00, 'purchase', 'entertainment'),
(5, 4, '2023-12-02', 45.80, 'purchase', 'restaurants'),
(6, 1, '2023-12-03', 1000.00, 'payment', 'credit_card_payment'),
(7, 2, '2023-12-03', 35.50, 'purchase', 'groceries'),
(8, 5, '2023-12-03', 250.00, 'purchase', 'shopping'),
(9, 3, '2023-12-04', 500.00, 'payment', 'credit_card_payment'),
(10, 4, '2023-12-04', 60.25, 'purchase', 'restaurants');
