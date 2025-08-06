{% snapshot snap_links %}

{{
    config(
        target_schema='snapshots',
        unique_key='movie_id',
        strategy='check',
        check_cols='all',
        invalidate_hard_deletes=True
    )
}}

SELECT
    movie_id,
    imdb_id,
    tmdb_id
FROM {{ ref('stg_links') }}

{% endsnapshot %}
