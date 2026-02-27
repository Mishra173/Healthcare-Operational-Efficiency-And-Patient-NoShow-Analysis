# Healthcare Operational Efficiency & Patient No-Show Analysis

##  Project Overview
This project analyzes patient appointment data to identify operational inefficiencies and key drivers behind patient no-shows.

The objective is to reduce missed appointments and minimize revenue loss using data-driven insights.



##  Tools & Technologies
- Python (Pandas)
- Data Cleaning & Feature Engineering
- Matplotlib And Seaborn (Exploratory Data Analysis)
- SQL (MySQL)
- Power BI
- DAX

##  Project Workflow

### 1. Data Cleaning (Python)
- Checked for missing/null values (dataset contained no null values)
- Validated data consistency
- Created new derived features such as:
  - Waiting Time (in days)
  - Waiting Time Buckets
  - Age Groups
  - No-Show Flag
- Performed Exploratory Data Analysis (EDA) using Matplotlib and Seaborn

### 2. SQL Analysis
- Performed structured analytical queries in MySQL
- Calculated no-show rates across:
  - Waiting Buckets
  - Age Groups
  - Gender
  - SMS Reminder Status
  - Analyzed no-show trends across demographic and operational categories using GROUP BY and aggregate functions.
- Generated business insights using aggregated and conditional queries

### 3. Power BI Dashboard Development
- Created DAX measures for KPI tracking
- Designed interactive dashboard with slicers
- Visualized operational and financial impact of missed appointments



##  Key Insights
- Overall no-show rate stands at 28.19%, indicating operational inefficiency.
- Longer waiting times are associated with higher no-show probability.
- Patients who did not receive SMS reminders show higher absenteeism.
- Certain age groups demonstrate comparatively higher no-show behavior.
- Missed appointments contribute to measurable revenue loss operational performance.




##  Business Impact
This analysis helps healthcare providers:
- Improve appointment scheduling
- Enhance reminder strategies
- Reduce revenue leakage
- Optimize operational efficiency

## Dashboard Preview

<img width="803" height="508" alt="Healthcare Operational Efficiency  And Patient No-Show Analysis Screenshot" src="https://github.com/user-attachments/assets/528dcd2f-0497-441e-a792-22bce84f8780" />
