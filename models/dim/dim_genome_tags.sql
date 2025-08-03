{{ config(materialized='ephemeral') }}

SELECT
    tag_id,
    INITCAP(TRIM(tag)) AS tag_name
FROM {{ ref('stg_genome_tags') }}
