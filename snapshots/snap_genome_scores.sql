{% snapshot snap_genome_scores %}

{{
    config(
        target_schema='snapshots',
        unique_key=['movie_id', 'tag_id'],
        strategy='timestamp',
        updated_at='last_updated', 
        invalidate_hard_deletes=True
    )
}}

SELECT
    movie_id,
    tag_id,
    relevance,
    CURRENT_TIMESTAMP AS last_updated
FROM {{ ref('stg_genome_score') }}

{% endsnapshot %}
