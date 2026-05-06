# Project Requirements Document (PRD)
## Project: Dataco Supply Chain Intelligence Hub

**BI Analyst:** Abinesh  
**Client/Sponsor:** Supply Chain Operations Director  
**Timeline:** 6-Week Delivery Sprint

---

## 1. Purpose & Project Context
The DataCo supply chain processes over **180,000 orders** annually across 5 global markets. While revenue reached **$36.78M** between 2015 and 2018, operational efficiency has significantly lagged:
* **Operational Crisis:** 54.83% of all orders are arriving late, signaling a failure to scale.
* **Financial Risk:** A 10.17% average discount rate against a 10.78% gross margin leaves a dangerously thin **0.61% buffer**, threatening structural profitability.

**Objective:** This BI solution transforms raw transactional data into an executive-ready intelligence platform, shifting leadership from reactive firefighting to proactive, data-driven decision-making.

---

## 2. Stakeholder Requirements
The dashboard must facilitate deep-dives into delivery reliability, margin health, and customer dynamics through:
* **Geospatial Intelligence:** Late delivery rates mapped by country and region.
* **Temporal Trends:** Monthly OTD% and Late Delivery trends (2015–2018).
* **Root Cause Diagnosis:** A **Region × Shipping Mode** matrix to pinpoint specific logistical failures.
* **Financial Contribution:** Revenue and profit breakdown by market region.
* **Margin Integrity:** Scatter/Combo charts comparing **Gross Margin % vs. Average Discount %** by category.
* **Segment Analytics:** Loyalty and engagement comparisons across customer segments.
* **SLA Audit:** Specific diagnosis of First Class SLA breaches with carrier-level granularity.

---

## 3. User Journeys

### Current State (Manual & Reactive)
Operations leaders rely on fragmented spreadsheets. Delivery issues are identified only after customer complaints. Sales teams apply discounts without visibility into category-level margin impact.

### Future State (Data-Driven & Proactive)
Leadership identifies underperforming shipping modes and loss-making categories within **60 seconds** of opening the dashboard. 
* **Logistics Managers** use the Delivery page to build evidence-based carrier audit cases.
* **Finance Teams** use the Profitability page to enforce a 10% discount cap backed by category-specific data.

---

## 4. Technical Assumptions & Constraints
* **Operational Scope:** Delays are attributed solely to operational/carrier factors; weather or external demand signals are excluded.
* **Data Integrity:** `customer_id` duplicates were resolved via a deduplicated `dim_customer` table (Unique count: 21,392).
* **Logic:** `is_late = 1` is defined as *Actual Delivery Days > Scheduled Delivery Days*.
* **Currency:** All financial figures are standardized in **USD**.
* **Timeframe:** Dataset ends Jan 2018; 2018 trends represent only one month of data.

---

## 5. Roll-out Plan (6-Week Sprint)
| Phase | Focus | Key Activities |
| :--- | :--- | :--- |
| **Week 1** | **Discovery & Design** | Dataset assignment; schema design validation. |
| **Weeks 2-3** | **ETL & Warehouse** | SQL development and BigQuery ETL pipelines. |
| **Weeks 3-4** | **Iteration** | Finalize SQL; dashboard wireframing; peer review. |
| **Weeks 5-6** | **Development** | Final Power BI dashboarding, testing, and handover. |

---
*Document produced as part of the Dataco Supply Chain Intelligence Hub project.*
