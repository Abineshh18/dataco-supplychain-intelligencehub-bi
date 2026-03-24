# Data Model 

Data Model Overview: DataCo Supply chain Intelligence hub

This document outlines the logical and physical data model used for the Power BI dashboard. The model is designed using a Star Schema to ensure optimal performance, scalability, and ease of calculation for DAX measures.

1. Model Architecture

The architecture follows a standard Star Schema where a central Fact Table is surrounded by several Dimension Tables.
Fact Table: Contains quantitative data (metrics) and foreign keys.
Dimension Tables: Contains descriptive attributes (filters and labels).

Schema Diagram

2. Table Schemas

A. Fact Table: fact_orders

This table sits at the center of the model and contains all transactional metrics and foreign keys.

Grain: One row per Product Line Item per Order.

Key Columns:

Metrics: sales, order_item_total, benefit_per_order, actual_delivery_days.

Calculated Attributes: is_late , is_profitable , delivery_delay_days.

Foreign Keys: customer_id, product_card_id, date_key.

B. Dimension Tables : 

Table Name | Description | Primary Key 

dim_customer | Contains customer demographics and geographic market data | customer_id

dim_product | Contains product hierarchy (Category and Department) | product_card_id 

dim_date | A dedicated calendar table for Time Intelligence (YoY, MTD) | date_key 

3.Relationship Cardinality

All relationships in this model are One-to-Many (1:*) and use Single Direction filtering.

dim_customer | [1] -- [*] fact_orders (via customer_id)

dim_product | [1] -- [*] fact_orders (via product_card_id)

dim_date [1] -- [*] fact_orders (via date_key)

Modeling Choice: Single direction filters were used to prevent ambiguity and "circular dependency" errors during complex DAX calculations.


4.DAX Measures & Implementation 

To keep the model "lean," I avoided using calculated columns for reporting wherever possible. Instead, I implemented a Measures-only approach for dynamic analysis.

Key Measures Include:

Total Revenue: Sum of sales.

Total Profit: Sum of benefit_per_order.

Late Delivery Rate %: DIVIDE(COUNTROWS(FILTER(fact_orders, is_late=1)), COUNTROWS(fact_orders)).

Gross Margin %: AVERAGE(gross_margin_pct)

5. Performance Optimization 

Hidden Keys: All Foreign Keys (IDs) in the Fact table are hidden from the "Report View" to simplify the interface for end-users.

Data Types: Fixed all decimal fields to 2 places and ensured ID fields are formatted as "Whole Numbers" to reduce the model size.

Star Schema vs Flat: By moving the 52-column flat file into this 4-table schema, the Power BI file size was reduced, and filter response time was significantly improved.







