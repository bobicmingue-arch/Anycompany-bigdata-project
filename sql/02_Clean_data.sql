
-- ============================================
-- 02_clean_data.sql
-- Phase 1 : Nettoyage des données (SILVER)
-- ============================================

USE DATABASE ANYCOMPANY_LAB;
USE SCHEMA SILVER;

-- Transactions nettoyées
CREATE TABLE financial_transactions_clean AS
SELECT *
FROM BRONZE.financial_transactions
WHERE transaction_id IS NOT NULL
  AND transaction_date IS NOT NULL
  AND amount > 0;

-- Clients nettoyés
CREATE TABLE customer_demographics_clean AS
SELECT *
FROM BRONZE.customer_demographics
WHERE customer_id IS NOT NULL
  AND date_of_birth IS NOT NULL
  AND annual_income >= 0;

-- Campagnes marketing nettoyées
CREATE TABLE marketing_campaigns_clean AS
SELECT *
FROM BRONZE.marketing_campaigns
WHERE campaign_id IS NOT NULL
  AND start_date IS NOT NULL
  AND end_date IS NOT NULL
  AND budget > 0;

-- Promotions nettoyées
CREATE TABLE promotions_clean AS
SELECT *
FROM BRONZE.promotions_data
WHERE promotion_id IS NOT NULL
  AND discount_percentage BETWEEN 0 AND 1;

-- Inventaire nettoyé
CREATE TABLE inventory_clean AS
SELECT *
FROM BRONZE.inventory
WHERE product_id IS NOT NULL
  AND current_stock >= 0;

-- Logistique nettoyée
CREATE TABLE logistics_and_shipping_clean AS
SELECT *
FROM BRONZE.logistics_and_shipping
WHERE shipment_id IS NOT NULL
  AND shipping_cost >= 0;
