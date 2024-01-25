{{ config(materialized='table') }}
SELECT EXTRACT(MONTH FROM BOOKING_DATE) AS booking_month, COUNT(*) AS booking_count
FROM BOOKINGS_1
GROUP BY booking_month
ORDER BY booking_count DESC
