
-- Executive Question 3: Explore credit health by customer behavior indicators
SELECT 
  ROUND(AVG(d_112), 2) AS avg_tenure,
  ROUND(AVG(d_103), 2) AS avg_spending_score,
  ROUND(AVG(d_39), 2) AS avg_credit_utilization,
  COUNT(*) AS customer_count,
  ROUND(AVG(target), 4) AS default_rate
FROM amex_customers;
