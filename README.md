# Retail Sales & Customer Performance Analytics

## Project Overview
This project analyzes retail sales data to understand sales performance, profitability, product categories, and regional trends. The goal is to turn raw sales data into meaningful insights using SQL, Microsoft Excel, and Power BI.

## Tools Used
- **SQL (MySQL):** Data querying, aggregation, grouping, joins, and sales analysis.
- **Microsoft Excel:** PivotTables, PivotCharts, and category and regional analysis.
- **Microsoft Power BI:** Interactive dashboard, KPI cards, charts, and a Region slicer.
- **Git and GitHub:** Version control and project documentation.

## Project Objectives
- Analyze total sales and profit.
- Compare sales and profit across product categories.
- Evaluate regional sales performance.
- Identify patterns that can support business decisions.
- Present key metrics through an interactive dashboard.

## Dashboard Features
- Total Sales KPI
- Total Profit KPI
- Distinct Order Count KPI
- Sales and Profit by Category chart
- Sales by Region chart
- Interactive Region slicer

## Repository Structure
- `sql/` — SQL analysis queries.
- `Retail_Sales_Analysis.xlsx` — Excel analysis and charts.
- `Retail_Sales_Dashboard.pbix` — Power BI dashboard.
- `superstore_sql_export.csv` — CSV exported from the MySQL working table.
- `superstore_source.csv` — CSV source file used during the import process.

## Data Note
The original Excel dataset and the current MySQL working table have different record counts. SQL analysis currently uses 9,694 records, while the original Excel dataset contains 9,994 records. Totals across these sources should not be compared as if they came from identical data until the discrepancy is resolved.

## Key Learning Outcomes
- Writing SQL queries for business analysis.
- Summarizing data with Excel PivotTables and PivotCharts.
- Building interactive Power BI dashboards.
- Communicating sales and profitability metrics clearly.

## Future Improvements
- Reconcile and validate the dataset across all tools.
- Add monthly and customer-segment trend analysis.
- Improve dashboard interactivity and visual design.
- Add validated business recommendations based on the complete dataset.
