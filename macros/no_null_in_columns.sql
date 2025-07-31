{% macro no_nulls_in_columns(model) %}
    SELECT * FROM {{ model }} WHERE
    {% set null_checks = [] %}
    {% for col in adapter.get_columns_in_relation(model) %}
        {% do null_checks.append(col.column + ' IS NULL') %}
    {% endfor %}
    {{ null_checks | join(' OR ') }}
{% endmacro %}
