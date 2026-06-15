DROP TABLE customer_shopping_trends
CREATE TABLE customer_shopping_trends (
    customer_id VARCHAR(10),
    age INT,
    gender VARCHAR(10),
    item_purchased VARCHAR(50),
    category VARCHAR(30),
    purchase_amount DECIMAL(10,2),
    location VARCHAR(50),
	size VARCHAR(10),
	Colour VARCHAR(30),
    season VARCHAR(20),
    review_rating DECIMAL(2,1),
    subscription_status VARCHAR(10),
    payment_method VARCHAR(30),
    shipping_type VARCHAR(30),
    discount_applied VARCHAR(10),
    promo_code_used VARCHAR(10),
    previous_purchases INT,
	Preferred Varchar(30),
	Frequency_of_purchases Varchar(30)
);

SELECT  * FROM customer_shopping_Trends
LIMIT 10;

SELECT COUNT(*) AS total_rows
FROM customer_shopping_trends;

SELECT 
 SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS customer_id_nulls,
 SUM(CASE WHEN age IS NULL THEN 1 ELSE 0 END) AS age_nulls,
 SUM(CASE WHEN item_purchased IS NULL THEN 1 ELSE 0 END) AS item_purchased_nulls,
 SUM(CASE WHEN category IS NULL THEN 1 ELSE 0 END) AS category_nulls,
 SUM(CASE WHEN purchase_amount IS NULL THEN 1 ELSE 0 END) AS purchase_amount_nulls,
 SUM(CASE WHEN location IS NULL THEN 1 ELSE 0 END) AS location_nulls,
 SUM(CASE WHEN size IS NULL THEN 1 ELSE 0 END) AS size_nulls,
 SUM(CASE WHEN colour IS NULL THEN 1 ELSE 0 END) AS colour_nulls,
 SUM(CASE WHEN season IS NULL THEN 1 ELSE 0 END) AS season_nulls,
 SUM(CASE WHEN review_rating IS NULL THEN 1 ELSE 0 END) AS review_rating_nulls,
 SUM(CASE WHEN subscription_status IS NULL THEN 1 ELSE 0 END) AS subscription_status_nulls,
 SUM(CASE WHEN payment_method IS NULL THEN 1 ELSE 0 END) AS payment_method_nulls,
 SUM(CASE WHEN shipping_type IS NULL THEN 1 ELSE 0 END) AS shipping_type_nulls,
 SUM(CASE WHEN discount_applied IS NULL THEN 1 ELSE 0 END) AS discount_applied_nulls,
 SUM(CASE WHEN promo_code_used IS NULL THEN 1 ELSE 0 END) AS promo_code_used_nulls,
 SUM(CASE WHEN previous_purchases IS NULL THEN 1 ELSE 0 END) AS previous_purchases_nulls,
 SUM(CASE WHEN preferred IS NULL THEN 1 ELSE 0 END) AS preferred_nulls,
 SUM(CASE WHEN frequency_of_purchases IS NULL THEN 1 ELSE 0 END) AS frequency_of_purchases_nulls
FROM customer_shopping_trends;

SELECT customer_id,COUNT(*) AS count_rows
FROM customer_shopping_trends
GROUP BY customer_id
HAVING COUNT(*) > 1;

SELECT DISTINCT (gender) FROM customer_shopping_trends
SELECT DISTINCT (category) FROM customer_shopping_trends
SELECT DISTINCT (location) FROM customer_shopping_trends
SELECT DISTINCT (age) FROM customer_shopping_trends

SELECT * FROM customer_shopping_trends

SELECT COUNT(age)
FROM customer_shopping_trends
WHERE age <= 

SELECT 
 CASE 
   WHEN age BETWEEN 18 AND 35 THEN 'Young Adults'
   WHEN age BETWEEN 36 AND 55 THEN 'Middle-Aged Adults'
   ELSE 'Older Adults'
  END AS age_group,
  COUNT(*) AS total_purchases,
  SUM(purchase_amount) AS total_spending
FROM customer_shopping_trends
GROUP BY 
 CASE 
   WHEN age BETWEEN 18 AND 35 THEN 'Young Adults'
   WHEN age BETWEEN 36 AND 55 THEN 'Middle-Aged Adults'
   ELSE 'Older Adults'
  END
ORDER BY total_spending DESC;

ALTER TABLE customer_shopping_trends
ADD age_group VARCHAR(30);

UPDATE customer_shopping_trends
SET age_group =
CASE 
   WHEN age BETWEEN 18 AND 35 THEN 'Young Adults'
   WHEN age BETWEEN 36 AND 55 THEN 'Middle-Aged Adults'
   ELSE 'Older Adults'
  END;

SELECT DISTINCT(location) FROM customer_shopping_trends

SELECT * FROM customer_shopping_trends
ORDER BY customer_id::INT ASC;