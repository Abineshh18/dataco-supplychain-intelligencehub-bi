============================================================
-- DATACO SUPPLY CHAIN INTELLIGENCE HUB
============================================================

-- Google Bigquery SQL Scripts 
-- Created a dataset in Bigquery with the name dataco_bi - select region as asia-south1(Mumbai)
-- Created table - upload the cleaned CSV file and name the table as : staging_orders - Auto detect schema 
-- Expand Advanced Options - Header rows to skip : type 1 
-- Table Created Successfully.

-- To check all data from our CSV file is imported 

SELECT COUNT(*) FROM 'dataco-supply-chain.dataco_bi.staging_orders';

-- ============================================================
 
CREATE OR REPLACE TABLE `dataco-supply-chain-your-projectid.dataco_bi.staging_orders_clean` AS
 
SELECT
    total_days_for_shipping,
    total_days_for_shipment_scheduled,
    benefit_perorder,
    sales_per_customer,
    delivery_status,
    late_delivery_risk,
    category_Id,
    category_Name,
    customer_city,
    customer_Id,
    customer_segment,
    customer_State,
    customer_street,
    customer_zipcode,
    department_id,
    department_name,
    Latitude,
    Longitude,
    Market,
    order_city,
    order_country,
    order_customer_id,
    order_Id,
    order_item_cardprod_id,
    order_item_discount,
    order_item_discount_rate,
    order_item_id,
    order_item_product_price,
    order_item_profit_ratio,
    order_item_quantity,
    Sales,
    order_item_total,
    order_profit_per_order,
    order_region,
    order_state,
    order_status,
    product_card_id,
    product_category_id,
    product_name,
    product_price,
    shipping_mode,
    ordered_date,
    shipping_date,
 
    -- ── CALCULATED COLUMNS ───────────────────────────────────
 
    -- Actual days taken from order placed to shipped
    DATE_DIFF(shipping_date, ordered_date, DAY)AS actual_delivery_days,
 
    -- How many days over or under schedule
    total_days_for_shipping - total_days_for_shipment_scheduled AS delivery_delay_days,
 
    -- Late flag — directly from your existing column
    late_delivery_risk                              AS is_late,
 
    -- Gross margin percentage
    CASE
        WHEN Sales > 0
        THEN ROUND((order_profit_per_order / Sales) * 100, 2)
        ELSE 0
    END AS gross_margin_pct,
 
    -- Date dimension columns — extracted from ordered_date
    EXTRACT(YEAR    FROM ordered_date)              AS order_year,
    EXTRACT(MONTH   FROM ordered_date)              AS order_month,
    EXTRACT(QUARTER FROM ordered_date)              AS order_quarter,
    FORMAT_DATE('%B', ordered_date)                 AS order_month_name,
    FORMAT_DATE('%Y-%m', ordered_date)              AS order_year_month,
 
    -- Profitability flag
    CASE
        WHEN order_profit_per_order > 0 THEN 1
        ELSE 0
    END AS is_profitable,
 
    -- Discount tier buckets for scatter plot analysis
    CASE
        WHEN order_item_discount_rate = 0     THEN 'No discount'
        WHEN order_item_discount_rate <= 0.05 THEN '1-5%'
        WHEN order_item_discount_rate <= 0.10 THEN '6-10%'
        WHEN order_item_discount_rate <= 0.20 THEN '11-20%'
        ELSE 'Over 20%'
    END AS discount_tier,
 
    -- Clean shipping mode — removes any accidental whitespace
    TRIM(shipping_mode) AS shipping_mode_clean
 
FROM `dataco-supply-chain-your.projectid.dataco_bi.staging_orders`;
 
-- ── VERIFY ───────────────────────────────────────────────────
-- Run this after the CREATE OR REPLACE above completes.
SELECT  COUNT(*) AS total_rows,FROM `dataco-supply-chain-your.projectid.dataco_bi.staging_orders_clean`;
