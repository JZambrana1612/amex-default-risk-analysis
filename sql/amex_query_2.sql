
-- Executive Question 2: Identify early behavioral indicators of default
SELECT 
  target,
  ROUND(AVG(p_2), 2) AS avg_p_2,
  ROUND(AVG(d_63), 2) AS avg_d_63,
  ROUND(AVG(s_27), 2) AS avg_s_27,
  COUNT(*) AS customer_count
FROM amex_customers
GROUP BY target
ORDER BY target;
