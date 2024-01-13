
-- Use the `ref` function to select from other models

{{ config(materialized='table') }}
SELECT HOTEL, COUNT(*) AS booking_count
FROM BOOKINGS_1
GROUP BY HOTEL
