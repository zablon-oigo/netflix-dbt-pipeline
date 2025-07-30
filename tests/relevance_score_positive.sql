-- Checks that all relevance scores are greater than 0
select *
from {{ ref('fct_genome_scores') }}
where relevance_score <= 0
