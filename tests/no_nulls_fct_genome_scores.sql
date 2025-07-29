-- Ensures there are no nulls in any of the key columns of fct_genome_scores
select *
from {{ ref('fct_genome_scores') }}
where movie_id is null
   or tag_id is null
   or relevance_score is null
