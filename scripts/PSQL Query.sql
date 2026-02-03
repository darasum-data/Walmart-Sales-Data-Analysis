

SELECT * FROM walmart LIMIT 10

-- Business Problems
-- Q1. Find different payment method and number of transaction, number of qty sold

SELECT
	payment_method,
	COUNT(*) no_payments,
	SUM(quantity) as no_qty_sold
FROM walmart
GROUP BY payment_method


-- Q2. Identify the highest-rate category in each branch, display the branch, category AVG rating
SELECT *
FROM
(	SELECT
		branch,
		category,
		AVG(rating) as avg_rating,
		RANK() OVER(PARTITION BY branch ORDER BY AVG(rating) DESC) as rank
	FROM walmart
	GROUP BY 1,2
) t
WHERE rank = 1

--Q3. Identify the busiest day for each branch based on the number of transactions
SELECT *
FROM (
	SELECT
		branch,
		TO_CHAR(date::timestamp, 'Day') as day_name,
		COUNT(*) as no_transaction,
		RANK() OVER(PARTITION BY branch ORDER BY COUNT(*) DESC) as rank
	FROM walmart
	GROUP BY 1,2
)t
WHERE rank = 1

--Q4. Calculate the total quantity of items sold per payment method. List payment_method and total_quantity.
SELECT
	payment_method,
	SUM(quantity) as tota_qty
FROM walmart
GROUP BY 1

--Q5. Determint the average, minimum, and maximum rating of products for each city.
-- List the city, avg_rating, min_rating, and max_rating.

SELECT
	category,
	city,
	AVG(rating) as avg_rating,
	MIN(rating) as min_rating,
	MAX(rating) as max_rating
FROM walmart
GROUP BY 1, 2
ORDER BY 1,2, 3

--Q6. Caclculate the total profit for each categry by considering total_profit as (unit_price * quantity * profit_mergin).
-- List categry and total_profit, ordered from highest to lowest profit.

SELECT
	category,
	SUM(total) as total_revenune,
	SUM(total * profit_margin) as profit
FROM walmart
GROUP BY 1
ORDER BY 3 DESC


--Q7 Determin the most common paymment method for each Branch. Display brank and the preferred_payment_method.
WITH cte
AS (
	SELECT
		branch,
		payment_method,
		COUNT(*) as total_trans,
		RANK () OVER (PARTITION By branch ORDER BY COUNT(*) DESC) as rank
	FROM walmart
	GROUP BY 1, 2
)
SELECT *
FROM cte
WHERE rank = 1

--Q8 Categorize sales into 3 group MORNING, AFTERNOON, ENVENING
-- Find out with of shift and number of invioces

SELECT
	branch,
	CASE
		WHEN EXTRACT (HOUR FROM time) < 12 THEN 'Morning'
		WHEN EXTRACT (HOUR FROM time) BETWEEN 12 AND 17 THEN 'Afternoon'
		ELSE 'Evening'
	END as day_time,
	COUNT(*) as no_trans

FROM walmart 
GROUP BY 1, 2
ORDER BY 1, 3 DESC


--Q9 Identify 5 branc with highest decrease ration in revenue compare to last year (current year 2023 and last year 2022)
-- rdr == ((ls_rev -  cr_rev) / ls_rev) * 100


WITH revenue_2022
AS (
	SELECT
		branch,
		SUM(total) as revenue
	FROM walmart
	WHERE EXTRACT(YEAR FROM date) = 2022
	GROUP BY 1
),

revenue_2023
AS (
	SELECT
		branch,
		SUM(total) as revenue
	FROM walmart
	WHERE EXTRACT(YEAR FROM date) = 2023
	GROUP BY 1
)
SELECT 
	ls.branch,
	ls.revenue as last_year_revenue,
	cs.revenue as cr_year_revenue
FROM revenue_2022 as ls
JOIN revenue_2023 as cs
ON ls.branch = cs.branch
WHERE ls.revenue > cs.revenue



