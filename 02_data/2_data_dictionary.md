# Data Dictionary: Dataco Supply Chain Intelligence Hub

This dictionary defines the columns present in the final processed **Star Schema** used in the BigQuery warehouse and Power BI model.

---

## 1. Fact Table: `fact_orders`
This table contains all transactional metrics, performance flags, and foreign keys for analysis.

| Column Name | Data Type | Description |
| :--- | :--- | :--- |
| `order_id` | Integer | Unique identifier for each customer order. |
| `order_item_id` | Integer | Unique identifier for a specific product line within an order. |
| `sales` | Decimal | Gross sales amount for the item. |
| `order_item_total` | Decimal | Net sales amount after discounts. |
| `order_item_quantity` | Integer | Number of units purchased. |
| `order_profit_per_order` | Decimal | Profit generated from the line item. |
| `actual_delivery_days` | Integer | Actual time taken to ship the order. |
| `total_days_for_shipment_scheduled` | Integer | Scheduled/promised delivery timeframe. |
| `delivery_delay_days` | Integer | Variance between actual and scheduled days (Calculated). |
| `is_late` | Boolean | Flag (1/0) indicating if the order was delivered late. |
| `is_profitable` | Boolean | Flag (1/0) indicating if the order resulted in a positive benefit. |
| `gross_margin_pct` | Decimal | Calculated profit margin percentage. |
| `discount_tier` | String | Categorization of discount applied (e.g., 0-10%, 11-20%). |
| `delivery_status` | String | Qualitative status (e.g., Late delivery, Shipping on time). |

---

## 2. Dimension Table: `dim_customer`
Contains descriptive attributes about the buyers and geographic segmentation.

| Column Name | Data Type | Description |
| :--- | :--- | :--- |
| `customer_id` | Integer | Primary Key for customer identification (Deduplicated). |
| `customer_segment` | String | Segment type (Consumer, Corporate, Home Office). |
| `customer_city` | String | City where the customer is located. |
| `customer_state` | String | State where the customer is located. |
| `customer_country` | String | Country of the customer. |
| `market` | String | Global market region (e.g., LATAM, Europe, Pacific Asia). |

---

## 3. Dimension Table: `dim_product`
Contains attributes related to the items sold and organizational hierarchy.

| Column Name | Data Type | Description |
| :--- | :--- | :--- |
| `product_card_id` | Integer | Unique identifier for the product. |
| `product_name` | String | Full name of the product. |
| `product_price` | Decimal | Unit price of the product. |
| `category_name` | String | Product category (e.g., Cleats, Apparel, Cardio Equipment). |
| `department_name` | String | Organizational department (e.g., Fitness, Golf, Fan Shop). |

---

## 4. Dimension Table: `dim_date`
Master calendar table used to enable Time Intelligence DAX functions.

| Column Name | Data Type | Description |
| :--- | :--- | :--- |
| `date_key` | Date | Primary key in Date format (DD-MM-YYYY). |
| `year` | Integer | Calendar year of the order. |
| `month_name` | String | Full month name (e.g., January). |
| `quarter_label` | String | Quarter identifier (e.g., Q1,
