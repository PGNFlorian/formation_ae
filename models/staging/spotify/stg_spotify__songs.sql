SELECT
  `album`,
  upper(`artist`) as artist,
  coalesce(`genre`, 'Unknown') as genre,
  `release_year`,
  `song_id`,
  upper(`title`) as title
FROM {{source("spotify","songs")}}