CREATE DATABASE customer_behavior;
USE customer_behavior;
SHOW TABLES;
select * from customers limit 20;

select gender ,SUM(`purchase_amount_(usd)`) from customers group by gender;

select * from customers where discount_applied = 'yes' AND `purchase_amount_(usd)`>(select AVG(`purchase_amount_(usd)`) from customers);

SELECT 
    item_purchased,
    AVG(review_rating) AS avg_rating,
    COUNT(*) AS total_reviews
FROM customers
GROUP BY item_purchased
HAVING COUNT(*) >= 5
ORDER BY avg_rating DESC
LIMIT 5;

select shipping_type , round(AVG(`purchase_amount_(usd)`),2) from customers where shipping_type in ('Standard','Express')
group by shipping_type;

select subscription_status, count(customer_id) as total_customer,
round(avg(`purchase_amount_(usd)`),2) as avg_spend,
round(sum(`purchase_amount_(usd)`),2) as total_revenue 
from customers
group by subscription_status
order by total_revenue,avg_spend desc;

SELECT 
    item_purchased,
    AVG(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END) * 100 AS discount_percentage
FROM customers
GROUP BY item_purchased
ORDER BY discount_percentage DESC
LIMIT 5;


SELECT 
    CASE 
        WHEN previous_purchases = 1 THEN 'New'
        WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
        ELSE 'Loyal'
    END AS customer_segment,
    COUNT(*) AS customer_count
FROM customers
GROUP BY customer_segment;

SELECT category, item_purchased, total_purchases
FROM (
    SELECT 
        category,
        item_purchased,
        COUNT(*) AS total_purchases,
        ROW_NUMBER() OVER (
            PARTITION BY category 
            ORDER BY COUNT(*) DESC
        ) AS rn
    FROM customers
    GROUP BY category, item_purchased
) t
WHERE rn <= 3;


SELECT 
    CASE 
        WHEN previous_purchases > 5 THEN 'Repeat Buyer'
        ELSE 'Others'
    END AS customer_type,
    
    COUNT(*) AS total_customers,
    
    SUM(CASE WHEN subscription_status = 'Yes' THEN 1 ELSE 0 END) AS subscribed,
    
    (SUM(CASE WHEN subscription_status = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS subscription_rate
FROM customers
GROUP BY customer_type

SELECT 
    age_group,
    SUM(`purchase_amount_(usd)`) AS total_revenue
FROM customers
GROUP BY age_group
ORDER BY total_revenue DESC;