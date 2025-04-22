CREATE DATABASE ZOMATO;
USE ZOMATO;

CREATE TABLE Zomato_Restaurant(
Restaurant_name VARCHAR (150),
online_order VARCHAR (20),
book_table VARCHAR (20),
rate VARCHAR (20),	
votes INT,
approx_cost_for_two_people INT,
listed_in_type VARCHAR (50));

SELECT * FROM Zomato_Restaurant;

-- TASKS 

-- Restaurant Performance

-- Top 10 highest rated restaurants

SELECT Restaurant_name,rate,votes
FROM Zomato_Restaurant
WHERE RATE >=  3 
ORDER BY VOTES DESC LIMIT 10;

-- Online vs Offline Insights

-- How many restaurants offer online ordering vs not?

SELECT COUNT(online_order)
FROM zomato_restaurant
GROUP BY ONLINE_ORDER;

-- Average rating of restaurants with and without online ordering

SELECT AVG(RATE),ONLINE_ORDER
FROM ZOMATO_RESTAURANT
GROUP BY ONLINE_ORDER;

-- Total number of restaurants by booking availability

SELECT COUNT(Restaurant_name),BOOK_TABLE
FROM zomato_restaurant
GROUP BY  book_table;

-- Total votes received by listing type

SELECT SUM(VOTES),listed_in_type
FROM zomato_restaurant
GROUP BY listed_in_type
ORDER BY SUM(VOTES) DESC;

-- Number of restaurants for each rating band (rounded rating)

SELECT ROUND(CAST(SUBSTRING(rate, 1, 3) AS FLOAT), 0) AS rating_band, COUNT(*) AS total_restaurants
FROM zomato_restaurant
GROUP BY rating_band
ORDER BY total_restaurants DESC;

-- Average votes per restaurant by booking option

SELECT AVG(VOTES),BOOK_TABLE
FROM ZOMATO_RESTAURANT
GROUP BY BOOK_TABLE;

-- Number of restaurants by listing type (sorted by count)

SELECT COUNT(Restaurant_name),listed_in_type
FROM zomato_restaurant
GROUP BY listed_in_type;

-- Top 5 listing types by number of restaurants with ratings above 4.0

SELECT count(*)Restaurant_name,listed_in_type
FROM zomato_restaurant
WHERE cast(substring(rate, 1,3) as float  )>4
GROUP BY listed_in_type
ORDER BY Restaurant_name DESC
LIMIT 5;

-- Cost & Value

-- Average cost for two people based on table booking availability

SELECT AVG(approx_cost_for_two_people),BOOK_TABLE
FROM ZOMATO_RESTAURANT
GROUP BY BOOK_TABLE;

-- Which type of listing has the highest average cost?

SELECT  AVG(approx_cost_for_two_people) AS AVG_COST ,LISTED_IN_TYPE
FROM ZOMATO_RESTAURANT
GROUP BY LISTED_IN_TYPE
ORDER BY AVG_COST DESC;

-- Average cost for restaurants grouped by online_order and book_table

SELECT AVG(approx_cost_for_two_people),online_order,book_table
FROM zomato_restaurant
GROUP BY online_order,book_table
ORDER BY AVG(approx_cost_for_two_people) DESC;

-- Average rating and votes grouped by online_order

SELECT AVG(RATE),AVG(VOTES), ONLINE_ORDER
FROM ZOMATO_RESTAURANT 
GROUP BY ONLINE_ORDER;

-- Average rating and total votes for restaurants grouped by booking availability

SELECT AVG(rate)AS RATES,sum(votes)AS VOTES,book_table
FROM zomato_restaurant
GROUP BY book_table
ORDER BY RATES DESC;

-- Which cost range has the most restaurants?

SELECT approx_cost_for_two_people,COUNT(Restaurant_name) AS RESTURANT
FROM zomato_restaurant
GROUP BY approx_cost_for_two_people
ORDER BY RESTURANT DESC;

-- What’s the most common rating among all restaurants?

SELECT SUBSTRING(rate, 1, 3) AS rating, COUNT(*) AS frequency
FROM zomato_restaurant
GROUP BY rating
ORDER BY frequency DESC;

 -- Compare votes for restaurants with and without table booking?
 
 SELECT book_table, AVG(votes) AS avg_votes
FROM zomato_restaurant
GROUP BY book_table
ORDER BY avg_votes DESC;

-----------------------------------------------------




















