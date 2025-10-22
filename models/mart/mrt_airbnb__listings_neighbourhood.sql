{{
    config(
        tag='daily'
    )
}}

SELECT 
  neighbourhood_cleansed,
  room_type,
  count(listing_id) as total_listings,
  round(avg(price),2) as avg_price
 FROM {{ref("stg_airbnb__listings")}}
 group by neighbourhood_cleansed, room_type