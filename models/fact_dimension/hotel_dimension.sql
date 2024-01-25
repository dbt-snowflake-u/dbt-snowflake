-- models/dim_hotel.sql

{{ config(materialized='table') }}

WITH source_data AS (
    SELECT DISTINCT
        Hotel AS HotelName
    FROM
        BOOKINGS_1
)

SELECT
    ROW_NUMBER() OVER (ORDER BY HotelName) AS HotelID, -- Generates a unique ID for each hotel
    HotelName
FROM
    source_data
