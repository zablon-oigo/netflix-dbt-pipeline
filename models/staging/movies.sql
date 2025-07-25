WITH raw_movies AS (
    SELECT * FROM {{ source('netflix','movies')}}
)
SELECT 
    movieId as movie_id,
    title,
    genres
FROM raw_movies