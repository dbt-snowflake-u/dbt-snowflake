{{ config(materialized='table') }}
SELECT 
  COUNT(*) AS total_bookings,
  COUNT(BOOKING_REFERENCE) AS total_with_reference,
  COUNT(HOTEL) AS total_with_hotel,
  COUNT(BOOKING_DATE) AS total_with_date,
  COUNT(COST) AS total_with_cost
FROM BOOKINGS_1
