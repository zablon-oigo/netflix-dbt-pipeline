WITH raw_links AS (
    SELECT * FROM {{ source('netflix', 'r_links') }}
)

SELECT 

    movieId AS movie_id,
    imdbId AS imdb_id,
    tmdbId as tmdb_id

FROM raw_links