-- ============================================
-- 01_Load_data.sql
-- Phase 1 : Préparation et chargement des données
-- Projet : AnyCompany Food & Beverage
-- ============================================

-- Création et utilisation de la base de données
USE DATABASE ANYCOMPANY_LAB;

-- Schéma BRONZE : données brutes
USE SCHEMA BRONZE;

-- ============================================
-- Chargement des fichiers CSV depuis S3
-- ============================================

-- Customer demographics
COPY INTO customer_demographics
FROM @PUBLIC.food_beverage_stage/customer_demographics.csv
FILE_FORMAT = (TYPE = 'CSV' SKIP_HEADER = 1);

-- Customer service interactions
COPY INTO customer_service_interactions
FROM @PUBLIC.food_beverage_stage/customer_service_interactions.csv
FILE_FORMAT = (TYPE = 'CSV' SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = '"');

-- Financial transactions
COPY INTO financial_transactions
FROM @PUBLIC.food_beverage_stage/financial_transactions.csv
FILE_FORMAT = (TYPE = 'CSV' SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = '"');

-- Promotions data
COPY INTO promotions_data
FROM @PUBLIC.food_beverage_stage/promotions-data.csv
FILE_FORMAT = (TYPE = 'CSV' SKIP_HEADER = 1);

-- Marketing campaigns
COPY INTO marketing_campaigns
FROM @PUBLIC.food_beverage_stage/marketing_campaigns.csv
FILE_FORMAT = (TYPE = 'CSV' SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = '"');

-- Logistics and shipping
COPY INTO logistics_and_shipping
FROM @PUBLIC.food_beverage_stage/logistics_and_shipping.csv
FILE_FORMAT = (TYPE = 'CSV' SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = '"')
ON_ERROR = 'CONTINUE';

-- Supplier information
COPY INTO supplier_information
FROM @PUBLIC.food_beverage_stage/supplier_information.csv
FILE_FORMAT = (TYPE = 'CSV' SKIP_HEADER = 1);

-- Employee records
COPY INTO employee_records
FROM @PUBLIC.food_beverage_stage/employee_records.csv
FILE_FORMAT = (TYPE = 'CSV' SKIP_HEADER = 1);

-- ============================================
-- Chargement des fichiers JSON
-- ============================================

-- Inventory
COPY INTO inventory
FROM (
  SELECT
    $1:product_id::STRING,
    $1:product_category::STRING,
    $1:region::STRING,
    $1:country::STRING,
    $1:warehouse::STRING,
    $1:current_stock::NUMBER,
    $1:reorder_point::NUMBER,
    $1:lead_time::NUMBER,
    $1:last_restock_date::DATE
  FROM @PUBLIC.food_beverage_stage/inventory.json
)
FILE_FORMAT = (TYPE = 'JSON');

-- Store locations
COPY INTO store_locations
FROM (
  SELECT
    $1:store_id::STRING,
    $1:store_name::STRING,
    $1:region::STRING,
    $1:country::STRING,
    $1:city::STRING
  FROM @PUBLIC.food_beverage_stage/store_locations.json
)
FILE_FORMAT = (TYPE = 'JSON');
