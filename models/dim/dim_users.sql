{{ config(materialized='table') }}

WITH ratings AS (
  SELECT user_id FROM {{ ref('stg_ratings') }}
),
tags AS (
  SELECT user_id FROM {{ ref('stg_tags') }}
)

SELECT DISTINCT user_id
FROM (
  SELECT user_id FROM ratings
  UNION
  SELECT user_id FROM tags
)
