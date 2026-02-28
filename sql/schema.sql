CREATE TABLE sales_reps (
    rep_id INT PRIMARY KEY,
    rep_name VARCHAR(50),
    region VARCHAR(50),
    base_salary DECIMAL(12,2)
);

CREATE TABLE sales_transactions (
    transaction_id INT PRIMARY KEY,
    rep_id INT,
    sale_date DATE,
    sale_amount DECIMAL(12,2),
    FOREIGN KEY (rep_id) REFERENCES sales_reps(rep_id)
);

CREATE TABLE compensation_rules (
    rule_id INT PRIMARY KEY,
    min_achievement_percent DECIMAL(5,2),
    max_achievement_percent DECIMAL(5,2),
    commission_rate DECIMAL(5,4),
    bonus_amount DECIMAL(12,2)
);