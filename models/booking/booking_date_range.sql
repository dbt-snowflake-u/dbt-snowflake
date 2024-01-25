{{ config(materialized='table') }}
SELECT MIN(BOOKING_DATE) AS first_booking_date, MAX(BOOKING_DATE) AS last_booking_date
FROM BOOKINGS_1
