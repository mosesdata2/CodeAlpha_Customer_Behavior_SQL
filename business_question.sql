SELECT * FROM customer_shopping_trends
ORDER BY customer_id::INT ASC;

--Does age group influence customer purchasing behavior and revenue
SELECT 
  age_group,
  COUNT(*) AS total_purchases,
  SUM(purchase_amount) AS total_revenue,
  ROUND(AVG(purchase_amount),2) AS avg_purchases
FROM customer_shopping_trends
GROUP BY age_group
ORDER BY total_revenue DESC;

--Which product categories generate the highest sales and revenue
SELECT 
  category,
  COUNT(*) AS total_purchases,
  SUM(purchase_amount) AS total_revenue,
  ROUND(AVG(purchase_amount),2) avg_purchases
FROM customer_shopping_trends
GROUP BY category
ORDER BY total_revenue DESC;

--Does seasonality affect customer purchasing behaviour
SELECT  
  season,
  COUNT(*) AS total_purchses,
  SUM(purchase_amount) AS total_revenue
FROM customer_shopping_trends
GROUP BY season
ORDER BY total_revenue DESC;

--Does subcription status influence customer spending and loyalty
SELECT 
  subscription_status,
  COUNT(*) AS total_customers,
  SUM(purchase_amount) AS total_revenue,
  ROUND(AVG(purchase_amount),2) AS avg_previous_purchase
FROM customer_shopping_trends
GROUP BY subscription_status;

--Which payment methods are most preferred
SELECT 
  payment_method,
  COUNT(*) AS frequency_of_use,
  SUM(purchase_amount) AS total_revenue
FROM customer_shopping_trends
GROUP BY payment_method
ORDER BY frequency_of_use DESC;

--Do discount influence customer spending behavior
SELECT
  discount_applied,
  COUNT(*) AS total_purchases,
  SUM(purchase_amount) AS total_revenue,
  ROUND(AVG(purchase_amount),2) avg_purchase
FROM customer_shopping_trends
GROUP BY discount_applied;

--Does promo code usuage affect customer purchasing behavior
SELECT 
  promo_code_used,
  COUNT(*) AS total_purchases,
  SUM(purchase_amount) AS total_revenue,
  ROUND(AVG(purchase_amount),2) AS avg_purchase
FROM customer_shopping_trends
GROUP BY promo_code_used;

SELECT 
  loyalty_level,
  COUNT(*) AS total_customers,
  SUM(purchase_amount) AS total_revenue,
  ROUND(AVG(purchase_amount),2) AS avg_purchase
FROM customer_shopping_trends
GROUP BY loyalty_level
ORDER BY total_revenue DESC;