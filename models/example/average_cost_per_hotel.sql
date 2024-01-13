{{ config(materialized='table') }}
SELECT HOTEL, AVG(COST) AS average_cost
FROM BOOKINGS_1
GROUP BY HOTEL