WITH sales_summary AS (
    SELECT 
        r.rep_id,
        r.rep_name,
        r.region,
        SUM(t.sale_amount) AS total_sales
    FROM sales_reps r
    JOIN sales_transactions t ON r.rep_id = t.rep_id
    GROUP BY r.rep_id, r.rep_name, r.region
)

SELECT * FROM sales_summary;


WITH sales_summary AS (
    SELECT 
        r.rep_id,
        r.rep_name,
        r.region,
        SUM(t.sale_amount) AS total_sales
    FROM sales_reps r
    JOIN sales_transactions t ON r.rep_id = t.rep_id
    GROUP BY r.rep_id, r.rep_name, r.region
)

SELECT
    rep_name,
    total_sales,
    ROUND((total_sales / 100000) * 100,2) AS achievement_percent
FROM sales_summary;


WITH sales_summary AS (
    SELECT 
        r.rep_id,
        r.rep_name,
        r.region,
        SUM(t.sale_amount) AS total_sales,
        ROUND((SUM(t.sale_amount) / 100000) * 100,2) AS achievement_percent
    FROM sales_reps r
    JOIN sales_transactions t ON r.rep_id = t.rep_id
    GROUP BY r.rep_id, r.rep_name, r.region
)

SELECT 
    s.rep_name,
    s.region,
    s.total_sales,
    s.achievement_percent,
    c.commission_rate,
    c.bonus_amount,
    ROUND(s.total_sales * c.commission_rate,2) AS commission,
    ROUND((s.total_sales * c.commission_rate) + c.bonus_amount,2) AS total_payout
FROM sales_summary s
JOIN compensation_rules c
ON s.achievement_percent 
BETWEEN c.min_achievement_percent AND c.max_achievement_percent;


SELECT
    region,
    SUM(sale_amount) AS total_sales,
    ROUND((SUM(sale_amount)/100000)*100,2) AS region_achievement
FROM sales_transactions t
JOIN sales_reps r ON t.rep_id = r.rep_id
GROUP BY region;


WITH sales_summary AS (
    SELECT 
        r.rep_name,
        SUM(t.sale_amount) AS total_sales
    FROM sales_reps r
    JOIN sales_transactions t ON r.rep_id = t.rep_id
    GROUP BY r.rep_name
)

SELECT *
FROM sales_summary
ORDER BY total_sales DESC
LIMIT 5;