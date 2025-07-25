{{ config(materialized='table')}}

WITH raw_ratings AS (
        SELECT * FROM MOVIES.PUBLIC.raw_ratings
)
SELECT 
    userID as user_id,
    movieId as movie_id,
    rating,
    TO_TIMESTAMP_LTZ(timestamp) as rating_timestamp

FROM raw_ratings