-- ============================================
-- 01_Load_data.sql
-- Phase 1 : Préparation et chargement des données
-- ============================================

USE DATABASE ANYCOMPANY_LAB;
USE SCHEMA BRONZE;

-- Chargement des données clients
COPY INTO customer_demographics
FROM @PUBLIC.food_beverage_stage/customer_demographics.csv
FILE_FORMAT = (TYPE = 'CSV' SKIP_HEADER = 1);

-- Chargement des transactions
COPY INTO financial_transactions
FROM @PUBLIC.food_beverage_stage/financial_transactions.csv
FILE_FORMAT = (TYPE = 'CSV' SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = '"');
