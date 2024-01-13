{{ config(materialized='table') }}
SELECT ID, COUNT(*) AS booking_count
FROM BOOKINGS_1
GROUP BY ID
HAVING COUNT(*) > 1
