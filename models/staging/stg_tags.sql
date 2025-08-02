{{ config(materialized='table') }}

WITH raw_tags AS (
    SELECT * FROM {{ source('netflix', 'r_tags') }}
)

SELECT 
    userId AS user_id,
    movieId AS movie_id,
    tag,
    TO_TIMESTAMP(timestamp) AS tag_timestamp
FROM raw_tags