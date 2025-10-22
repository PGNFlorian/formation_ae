SELECT
  DATE(`listen_date`) AS `listen_date`,
  coalesce(`minutes_listened`, 0) as `minutes_listened`,
  `song_id`
FROM {{source("spotify","listening_data")}}