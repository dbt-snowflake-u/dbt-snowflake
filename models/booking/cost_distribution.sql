{{ config(materialized='table') }}
SELECT COST, COUNT(*) AS frequency
FROM BOOKINGS_1
GROUP BY COST
ORDER BY frequency DESC
