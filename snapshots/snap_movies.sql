{% snapshot snap_movies %}

{{
    config(
        target_schema='snapshots',
        unique_key='movie_id',
        strategy='timestamp',
        updated_at='updated_at_column_if_exists',
        invalidate_hard_deletes=True
    )
}}

SELECT
    movie_id,
    title,
    genres,
    CURRENT_TIMESTAMP AS updated_at_column_if_exists 
FROM {{ ref('stg_movies') }}

{% endsnapshot %}
