-- ============================================================
-- DATACO SUPPLY CHAIN INTELLIGENCE HUB
-- BigQuery Script 02: Star Schema
-- ============================================================

-- DIMENSION TABLE 1: dim_customer

CREATE OR REPLACE TABLE 
`dataco-supplychain-your_project.id.dataco_bi.dim_customer` AS
SELECT DISTINCT
    customer_Id                 AS customer_id,
    customer_segment,
    customer_city,
    customer_State              AS customer_state,
    customer_zipcode,
    Market                      AS market,
    order_region                AS customer_region,
    order_country               AS customer_country
FROM 'dataco-supplychain-your_project.id.dataco_bi.staging_orders_clean'
WHERE customer_Id IS NOT NULL;

-- DIMENSION TABLE 2: dim_product

CREATE OR REPLACE TABLE `dataco-supply-chain-your_project.id.dataco_bi.dim_product` AS
SELECT DISTINCT
    product_card_id,
    product_name,
    product_price,
    category_Id                 AS category_id,
    category_Name               AS category_name,
    department_id,
    department_name
FROM 'dataco-supply-chain-your_project-id.dataco_bi.staging_orders_clean'
WHERE product_card_id IS NOT NULL;

-- DIMENSION TABLE 3: dim_date

CREATE OR REPLACE TABLE `dataco-supply-chain-your_project-id.dataco_bi.dim_date` AS
SELECT DISTINCT
    ordered_date                AS date_key,
    order_year                  AS year,
    order_quarter               AS quarter,
    order_month                 AS month,
    order_month_name            AS month_name,
    order_year_month            AS year_month,
    CONCAT('Q', CAST(order_quarter AS STRING), ' ', CAST(order_year AS STRING)) AS quarter_label
FROM `dataco-supply-chain-your_project-id.dataco_bi.staging_orders_clean`
WHERE ordered_date IS NOT NULL;

-- Fact Table : fact_orders

CREATE OR REPLACE TABLE `dataco-supply-chain-your_project-id.dataco_bi.fact_orders` AS
SELECT
    order_item_id,
    order_Id                        AS order_id,
    ordered_date,
    shipping_date,
    customer_Id                     AS customer_id,
    order_customer_id,
    product_card_id,
    shipping_mode_clean             AS shipping_mode,
    delivery_status,
    order_region,
    order_country,
    Market                          AS market,
    Sales                           AS sales,
    order_item_total,
    order_item_quantity,
    order_item_discount,
    order_item_discount_rate,
    order_item_product_price,
    order_item_profit_ratio,
    order_profit_per_order,
    benefit_perorder                AS benefit_per_order,
    sales_per_customer,
    actual_delivery_days,
    total_days_for_shipment_scheduled,
    delivery_delay_days,
    is_late,
    gross_margin_pct,
    is_profitable,
    discount_tier,
    order_year,
    order_month,
    order_quarter,
    order_month_name,
    order_year_month
FROM `dataco-supply-chain-your_project-id.dataco_bi.staging_orders_clean`;

