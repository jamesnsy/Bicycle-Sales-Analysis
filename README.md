# Bicycle Sales Analysis
Understand overall bicycle sales trend from 2016 - 2018. 
- Interactive tableau dashboard can be found [here](https://public.tableau.com/app/profile/si.yang.neo/viz/BikeStoresRevenueAnalysis_17264983929780/ExecutiveDashboard).

**Tools:** SQL (Microsoft SQL Server Management Studio), Tableau

## Problem Statement:
- A sales manager from EzyBike company would like to the understand the condition of bicycles sales activities within the company and gain insights into the various trends happening in the sales volume from 2016 to 2018.
  
## Objectives:
- Investigate the total revenue earned, units sold, number of orders and customers over the two year period.
- Understand the revenue distribution by Year, Month, State, Store, Brand and Category
- Identify who are the top 10 loyal customers
- Evaluate the performance of sale representatives in the company

## Dataset:
The following steps to generate the dataset is as follows:
1) Database is imported to Microsoft SQL Server Management Studio
2) Data to be used for analysis is extracted from the database via SQL queries (SELECT statement, INNER JOIN, GROUPBY)
3) SQL queries are imported to Microsoft Excel as the dataset and saved as .xlsx file.
   
## Data Preparation in SQL:
- Refer to the SQL file for the query process.
  
## Summary of Insights:
- A total of **$8,578,989** in revenue was generated, with **7078** bicycles sold, **1615** orders, and **1444** customers from 2016 to 2018.
- Overall, there was a slight decrease in revenue from 2016 to 2018, with the highest revenue in **2017** and the lowest in **2018**.
- Revenue showed a decreasing trend over the 12 months. It peaked in **April ($1,350,509)**, followed by a sharp decline in **May ($526,456)**. Revenue fluctuated from June onwards until December.
- Baldwin Bikes in **New York** generated the highest revenue of **$5,826,242**, followed by Santa Cruz Bikes in **California ($1,790,146)** and Rowlett Bikes in **Texas ($962,601)**.
- The Trek brand generated the highest percentage of revenue **(59.79%)** among other brands.
- Mountain bikes were the most popular choice, generating the highest revenue of **$3,030,776** (about 35% of total revenue from 2016 to 2018).
- Top 10 customers are Pamelia Newman, Abby Gamble, Sharyn Hopkins, Lyndsey Bean, Emmitt Sanchez, Melanie Hayes, Debra Burks, Elinore Aguilar, Corrina Sawyer and Shena Carter. 
- **Marcelene Boyer**, **Venita Daniel** and **Genna Serrano** are the top 3 sales representatives based on the amount of revenue they helped generate.

## Recommendations / Next Steps:
- Investigate the root cause behind the drastic revenue decrease from April to May 2018 as a similar trends occurred in all 3 shops located in different states.
- Consider implementing loyalty programs to attract and retain existing customers. For example, a tiered loyalty program could offer various levels of rewards and benefits based on the customer's spending levels.
- Consider discontinuing bike brands that are not generating significant revenue, as this could help the company reduce operational expenses.

## References:
- Database is from sqlservertutorial.net and can be downloaded from [here](https://www.sqlservertutorial.net/getting-started/sql-server-sample-database/).


