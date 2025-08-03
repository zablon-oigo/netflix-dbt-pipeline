{{ config(materialized='table') }}

SELECT
    movie_id,
    INITCAP(TRIM(title)) AS movie_title,
    SPLIT(genres, '|') AS genre_array,
    genres
FROM {{ ref('stg_movies') }}
