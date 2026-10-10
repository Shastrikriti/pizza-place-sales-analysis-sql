# 🍕 Pizza Place Sales Analysis (SQL)

> Analyzing a year of pizza orders with MySQL to find best-sellers, peak hours, and revenue drivers.

![SQL](https://img.shields.io/badge/SQL-MySQL-blue) ![Domain](https://img.shields.io/badge/Domain-Retail%20Sales-red) ![Status](https://img.shields.io/badge/Status-Complete-brightgreen)

## 📌 Overview

This project analyzes the sales and customer ordering behaviour of **Pizza Place** using SQL. It combines four related datasets to answer common business questions: how much revenue was earned, which pizzas and sizes sell best, and when customers order the most. The findings can support decisions on inventory, staffing, menu and pricing.

## 🎯 Objectives

- Analyze overall sales performance
- Identify best-selling pizza types by quantity and revenue
- Measure each category's contribution to sales
- Understand customer preference for pizza sizes
- Find peak ordering hours and days
- Analyze sales trends across dates
- Turn the results into business recommendations

## 🗂️ Dataset

| File | Description |
|---|---|
| `pizzas.csv` | Pizza ID, pizza type ID, size, price |
| `pizza_types.csv` | Pizza type ID, name, category, ingredients |
| `orders.csv` | Order ID, order date, order time |
| `order_details.csv` | Order detail ID, order ID, pizza ID, quantity |

**How the tables connect**

```
orders ──(order_id)──► order_details ──(pizza_id)──► pizzas ──(pizza_type_id)──► pizza_types
```

## 🛠️ Tech Stack

- **MySQL** / MySQL Workbench – database, queries
- **SQL** – joins, aggregation, grouping, date and time functions
- **Microsoft Word** – final report

## 🚀 Getting Started

1. Create the database and tables (all four CSVs import with the *Table Data Import Wizard* in MySQL Workbench):

   ```sql
   CREATE DATABASE project;
   USE project;
   ```

2. Import the four CSV files from the `data/` folder into tables named `pizzas`, `pizza_type`, `orders` and `order_details`. The query file refers to the pizza types table as `pizza_type`.
3. Open `sql/database_Pizza.sql` and run the queries one by one.

## 🔍 Analysis Questions

The `database_Pizza.sql` file answers 10 questions:

1. Total number of orders placed
2. Total revenue from pizza sales
3. Highest-priced pizza
4. Most common pizza size ordered
5. Top 5 most ordered pizza types by quantity
6. Total quantity ordered per pizza category
7. Distribution of orders by hour of the day
8. Category-wise distribution of orders
9. Quantity ordered per date, and the average pizzas per day
10. Top 3 pizza types by revenue

## 📊 Key Findings

| Metric | Result |
|---|---|
| Total orders | **21,350** |
| Total revenue | **₹ 8,17,860** |
| Average order value | **₹ 38.31** |
| Average pizzas per day | **~136** |
| Highest-priced pizza | **₹ 35.95** |
| Most ordered size | **Large (L)** – 18,526 order lines |

**Top 5 pizzas by quantity:** Classic Deluxe (2,416), Barbecue Chicken (2,372), Hawaiian (2,370), Pepperoni (2,369), Thai Chicken (2,315)

**Top 3 pizzas by revenue:** Thai Chicken (43,434), Barbecue Chicken (42,768), California Chicken (41,410)

**Quantity by category**

| Category | Quantity | Share |
|---|---|---|
| Classic | 14,888 | ~30% |
| Supreme | 11,987 | 24.2% |
| Veggie | 11,649 | 23.5% |
| Chicken | 11,050 | 22.3% |

**Peak hours:** 12 PM, 1 PM, 5 PM and 6 PM (lunch and dinner rush). Friday and Saturday are the busiest days.

## 💡 Business Recommendations

- Keep enough dough, cheese and boxes for **Large** pizzas, the most ordered size.
- Treat **Classic Deluxe** as the hero product; demand across the top 5 is close.
- Rely on the **Classic** and **Supreme** categories, which together make up about 54% of quantity sold.
- Add staff during **12–2 PM** and **5–7 PM**, and on **Fridays and Saturdays**.
- Use combo offers to lift the average order value above ₹ 38.31.

## 📁 Repository Structure

```
pizza-place-sales-analysis-sql/
├── data/
│   ├── pizzas.csv
│   ├── pizza_types.csv
│   ├── orders.csv
│   └── order_details.csv
├── sql/
│   └── database_Pizza.sql
├── report/
│   └── Pizza_Place_Analysis.docx
└── README.md
```

## 🔮 Future Work

- Build an interactive dashboard (Power BI / Tableau) on top of these queries
- Add month-wise and weekday-wise trend analysis
- Analyze which ingredients drive the most sales

## 👤 Author

**Kriti Shastri** · [GitHub](https://github.com/) · shastrikriti01@gmail.com
