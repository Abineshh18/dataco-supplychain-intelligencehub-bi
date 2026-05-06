Project Requirements Document
Dataco Supply Chain Intelligence Hub
                                                                                        
BI Analyst: Abinesh 
Client/Sponsor: Supply Chain Operations Director
Purpose: 
The DataCo supply chain processes over 180,000 orders annually across 5 global markets. 
While revenue has grown consistently from 2015 to 2018 (reaching $36.78M total), delivery performance has collapsed — with 54.83% of all orders arriving late.
This disconnect between revenue growth and operational performance signals a supply chain that is not scaling with the business. 
Simultaneously, a 10.17% average discount rate against a 10.78% gross margin leaves a 0.61% buffer before the entire business becomes structurally loss-making.
This BI solution transforms 3 years of raw transaction data into an executive-ready intelligence platform.
Business decisions driven by data insights are more accurate and defensible than decisions based on internal observation alone. 
The dashboard enables leadership to move from reactive fire-fighting to proactive, quantified decision-making.


Stakeholder requirements: 

In order to continuously monitor and improve supply chain performance, the dashboard must help decision-makers understand delivery reliability, margin health, and customer segment dynamics.

* Geospatial map showing late delivery rate by country and region
* OTD % and late delivery rate trend chart (monthly, 2015–2018)
* Region × Shipping Mode matrix showing late % (root cause diagnosis)
* Revenue and profit contribution by market region
* Gross margin % vs. average discount %  by category
* Customer segment loyalty comparison
* First Class SLA breach diagnosis with carrier-level insight

User journeys:

Current State
Operations leaders rely on manual reports and fragmented spreadsheets to understand supply chain performance.
Delivery issues are identified reactively after customer complaints. Discount decisions are made by sales teams without visibility into margin impact at the category level.

Future State
Decision-makers open the Power BI dashboard and within 60 seconds can identify which shipping mode is underperforming, which categories are loss-making, and which customer segments are under-engaged.
The Delivery page enables logistics managers to present a carrier audit case with quantified data. The Profitability page enables finance to set a 10% discount cap with category-specific evidence.

Assumptions:
* Weather data and external demand signals were not available in the dataset. Delivery delays are attributed to operational and carrier factors only.
* Duplicate customer_id values in the source dataset were resolved by creating a deduplicated dim_customer table. Post-deduplication unique customer count: 21,392 (reduced from ~24K).
* Orders flagged as is_late = 1 are those where actual delivery days exceeded scheduled days. The binary flag was computed during the cleaning phase.
* All revenue figures are in USD. Market conversions, if applicable to source transactions, were already applied in the raw dataset.
* The dataset ends January 2018. Growth trends therefore reflect only one month of 2018 data.

Roll-out plan:
The stakeholders have requested a completed BI tool in six weeks:
* Week 1: Dataset assigned. Initial design for schema and supply chain analysis are validated to fit the requirements.
* Weeks 2-3: SQL & ETL development
* Weeks 3-4: Finalize SQL. Dashboard design. 1st draft review with peers.
* Weeks 5-6: Dashboard development and testing
