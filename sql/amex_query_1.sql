
-- Executive Question 1: Identify customer segments associated with higher default risk
SELECT 
  target,
  ROUND(AVG(d_39), 2) AS avg_d_39,
  ROUND(AVG(b_30), 2) AS avg_b_30,
  ROUND(AVG(r_27), 2) AS avg_r_27,
  COUNT(*) AS customer_count
FROM amex_customers
GROUP BY target
ORDER BY target;
