SELECT
  cast(id as string) as listing_id,
  cast(host_id as string) as host_id,
  minimum_nights,
  neighbourhood_cleansed,
  number_of_reviews,
  price,
  room_type,
  availability_365
FROM {{source("airbnb","listings")}}