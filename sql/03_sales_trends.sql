
-- Analyse de l'évolution des ventes dans le temps

SELECT
  YEAR(transaction_date) AS year,
  SUM(amount) AS total_sales
FROM SILVER.financial_transactions_clean
GROUP BY YEAR(transaction_date)
ORDER BY year;
