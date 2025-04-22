![Zomato Banner](https://cdn.dribbble.com/users/132983/screenshots/6359703/shot_4x.jpg)



# 🍽️ Zomato Restaurant Data Analysis with SQL

This project showcases a comprehensive **data analysis using SQL** on a Zomato restaurant dataset. The goal is to uncover insights into restaurant performance, customer preferences, and cost dynamics using real-world data and SQL queries.

---

## 📊 Project Overview

This SQL project analyzes Zomato's restaurant data to understand:
- Restaurant performance based on ratings and votes
- The impact of features like **online ordering** and **table booking**
- Cost trends and customer value perception
- Popular listing types and rating distribution

It uses SQL concepts like:
- Aggregations with `GROUP BY`, `AVG()`, `SUM()`, `COUNT()`
- Filtering using `WHERE` and `HAVING`
- Sorting results using `ORDER BY`
- String and numeric functions (`SUBSTRING`, `CAST`, `ROUND`)
- Combined grouping and sorting to derive business insights

---

## 🗃️ Dataset

The dataset includes key attributes for each restaurant:

| Column Name                  | Description                                 |
|-----------------------------|---------------------------------------------|
| `Restaurant_name`           | Name of the restaurant                      |
| `online_order`              | Whether online ordering is available        |
| `book_table`                | Whether table booking is available          |
| `rate`                      | Average customer rating                     |
| `votes`                     | Total number of customer votes              |
| `approx_cost_for_two_people`| Cost estimate for two people                |
| `listed_in_type`            | Type/category of listing (e.g., Buffet)     |

---

## 🧠 Key Questions & SQL Tasks

### ✅ Restaurant Performance
- Top 10 highest-rated restaurants
- Total votes received by listing type
- Most common rating among restaurants

### ✅ Online vs Offline Insights
- Count of restaurants with/without online ordering
- Average rating with and without online ordering
- Restaurant count and ratings based on table booking availability

### ✅ Cost & Value Insights
- Average cost grouped by table booking and online order options
- Listing types with the highest average cost
- Most popular cost range among restaurants

### ✅ Rating Distribution
- Group restaurants by rating bands (rounded)
- Top 5 listing types with the most high-rated restaurants

---

## 📌 Tools & Concepts Used

- SQL (MySQL / PostgreSQL / SQLite compatible syntax)
- Aggregations: `SUM()`, `AVG()`, `COUNT()`
- String functions: `SUBSTRING()`
- Data type conversions: `CAST()`
- Conditional filtering: `WHERE`, `LIMIT`
- Grouped sorting: `GROUP BY`, `ORDER BY`

---

## 📈 Sample Insights

- 💻 **Online Ordering:** Restaurants that allow online ordering generally have higher average ratings.
- 🛎️ **Table Booking:** Restaurants with table booking receive more votes on average.
- 💰 **Cost:** The most common restaurant cost range is around ₹300-₹400 for two.
- 🌟 **Ratings:** Most restaurants are rated between 3.5 and 4.5 stars.
- 🔥 **Top Performing Types:** Buffet and Delivery listings received the highest votes and ratings.

---

## 🔧 How to Use

1. Clone the repo
2. Import the CSV into your SQL environment
3. Create the database & table using `CREATE DATABASE` and `CREATE TABLE`
4. Run the SQL queries from the project file to explore insights

---


