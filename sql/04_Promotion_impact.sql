-- Analyse de la performance des campagnes marketing

SELECT
  campaign_name,
  campaign_type,
  budget,
  reach,
  conversion_rate
FROM SILVER.marketing_campaigns_clean
ORDER BY conversion_rate DESC;
