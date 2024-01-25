{{ config(materialized='table') }}
SELECT EXTRACT(MONTH FROM BOOKING_DATE) AS booking_month, SUM(COST) AS monthly_revenue
FROM BOOKINGS_1
GROUP BY booking_month
ORDER BY booking_month
