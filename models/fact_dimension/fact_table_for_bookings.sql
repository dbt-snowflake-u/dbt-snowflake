-- models/fact_bookings.sql

{{ config(materialized='table') }}

SELECT
    BOOKING_REFERENCE,
    Hotel,
    BOOKING_DATE,
    Cost
FROM
    BOOKINGS_1
