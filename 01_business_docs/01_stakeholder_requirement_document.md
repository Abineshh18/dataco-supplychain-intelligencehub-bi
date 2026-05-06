# Stakeholder Requirements Document (SRD)
## Project: Dataco Supply Chain Intelligence Hub

**BI Professional:** Abinesh  
**Client/Sponsor:** Supply Chain Operations Director  
**Date:** March 2026

---

## 1. Business Problem
The DataCo Supply Chain Operations team requires a comprehensive BI solution to monitor and diagnose performance across its global supply chain network. While the business is growing in revenue, it is simultaneously experiencing:
* A collapse in delivery performance (On-Time Delivery).
* Margin erosion driven by uncontrolled discounting.
* Untapped revenue potential in under-engaged customer segments.

**Dataset Scope:** 180,518 orders | 5 Global Markets | 3-Year Period (2015–2018).

---

## 2. Stakeholders & Roles
| Stakeholder | Role & Focus |
| :--- | :--- |
| **Supply Chain Operations Director** | Primary sponsor; oversees global network performance and strategy. |
| **VP of Logistics** | Responsible for carrier contracts and delivery SLA compliance. |
| **VP of Finance** | Focused on margin optimization and discount policy enforcement. |
| **Head of Customer Retention** | Focused on segment loyalty and maximizing customer lifetime value. |
| **Regional Managers (5 Markets)** | Responsible for meeting specific regional performance targets. |

---

## 3. Stakeholder Usage & Dashboard Flow
The dashboard is structured into four functional domains to facilitate data-driven decision-making:

### Page 1: Executive Overview
* **User:** Operations Director
* **Purpose:** Monitor overall OTD%, revenue trends, and cross-market performance during weekly leadership reviews.

### Page 2: Delivery Performance
* **User:** VP of Logistics
* **Purpose:** Identify specific Region × Shipping Mode combinations causing SLA breaches to inform carrier contract renegotiations.

### Page 3: Profitability & Margin
* **User:** VP of Finance
* **Purpose:** Monitor the discount-to-margin ratio by category and flag "bleeder" categories where discounting creates loss-making orders.

### Page 4: Customer & Demand
* **User:** Head of Customer Retention
* **Purpose:** Track loyalty gaps between segments and measure the revenue uplift opportunity from improved B2B engagement.

---

## 4. Primary Requirements & Visualizations
To meet the objectives above, the BI solution must include:

### Operational & Geospatial Analysis
* **Late Delivery Map:** Geospatial visualization showing late delivery rates aggregated by country and region.
* **Monthly Trends:** Time-series analysis showing OTD% and Late Delivery Rate trends (Monthly).
* **Root-Cause Matrix:** A matrix breakdown of Late Delivery % by **Order Region × Shipping Mode**.

### Financial & Product Analysis
* **Market Contribution:** Revenue and Profit contribution breakdown by market region.
* **Margin vs. Discount:** Comparison of Gross Margin % against Average Discount % per product category.
* **Category Treemap:** Revenue distribution and margin performance across all product categories.

### Customer Intelligence
* **Segment Loyalty:** Customer segment revenue share vs. orders-per-customer frequency.
* **Opportunity Gap:** Quantified analysis of unrealized revenue in under-performing segments.

---

## 5. Key Insight Objectives
The final solution must provide clear answers to the following:
1. **The Loyalty Gap:** What is the unrealized revenue opportunity if B2B segments match consumer frequency?
2. **Delivery Impact:** How is the late delivery rate impacting customer satisfaction and logistical reliability?
3. **Margin Risk:** Which specific categories have a discount rate that approaches or exceeds the gross margin?

---
*Document produced as part of the Dataco Supply Chain Intelligence Hub project.*
