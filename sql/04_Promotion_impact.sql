-- Analyse de l'impact des promotions sur les ventes

SELECT
  CASE
    WHEN p.promotion_id IS NOT NULL THEN 'With Promotion'
    ELSE 'Without Promotion'
  END AS promotion_status,
  SUM(t.amount) AS total_sales
FROM SILVER.financial_transactions_clean t
LEFT JOIN SILVER.promotions_clean p
  ON t.region = p.region
 AND t.transaction_date BETWEEN p.start_date AND p.end_date
GROUP BY promotion_status;
