# Executive Summary: DataCo Supply Chain Intelligence Hub

## 📌 Project Overview
The **DataCo Supply Chain Intelligence Hub** is an end-to-end Business Intelligence solution designed to bridge the gap between high-level strategy and operational execution. Developed using a robust **Star Schema architecture** on **Google BigQuery**, the project analyzes **180,518 transactions** (2015–2018) to diagnose why the company experienced significant delivery failures despite rising revenue.

---

## 🚨 Critical Findings & Business Risks
The analysis identified a severe disconnect between sales volume and logistical capability. Key metrics reveal a supply chain under significant duress:

* **Operational Collapse:** The global **Late Delivery Rate stands at 54.83%**, indicating that the current supply chain infrastructure is failing to scale with growth.
* **SLA Breach:** **First Class shipping**—a premium service—has a **95.32% late rate**. This represents a fundamental breach of contract with customers and a primary driver for churn.
* **Profit Erosion:** While the **Gross Margin is 10.78%**, the average discount rate of **10.17%** leaves a razor-thin buffer of only **0.61%**. Currently, **19.37% of all orders are loss-making** due to aggressive discounting.

---

## 🛠 Technical Infrastructure
To solve these challenges, a modern data stack was utilized to transform raw Kaggle data into actionable insights:

* **Data Warehouse:** Google BigQuery (`asia-south1`).
* **Modeling:** Optimized **Star Schema** (1 Fact, 3 Dimensions) to ensure high-performance DAX queries.
* **Visualization:** A **4-page high-fidelity Power BI dashboard** featuring 30+ custom DAX measures and interactive heatmaps.

---

## 💡 Strategic Recommendations & Impact
The project delivered three high-impact, quantified recommendations to stabilize the bottom line and improve customer retention:

| Recommendation | Action Plan | Expected Impact |
| :--- | :--- | :--- |
| **Carrier Audit** | Immediate investigation of First Class carriers in South/Central Asia (100% failure rate). | Restored brand equity and reduced SLA penalties. |
| **Discount Capping** | Implement a hard cap on discounts at 10% for "bleeder" categories. | Immediate protection of the 10.78% gross margin. |
| **B2B Retention** | Launch a targeted loyalty program for Corporate and Home Office segments. | **$73,306** annual revenue uplift by matching Consumer frequency. |

---

## 🎯 Conclusion
By transitioning from "growth at any cost" to **data-driven efficiency**, DataCo can reclaim **$73k+ in annual revenue** and stop the profit leakage caused by uncontrolled discounting and carrier mismanagement. The Intelligence Hub provides the visibility required to move from reactive firefighting to proactive supply chain optimization.
