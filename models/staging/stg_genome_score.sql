WITH raw_genome_score AS (
    SELECT * FROM {{ source('netflix', 'r_genome_scores')}}
)

SELECT 
    movieId AS movie_id,
    tagId as tag_id,
    relevance 

FROM raw_genome_score