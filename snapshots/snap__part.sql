
{% snapshot snap__part %}

{{
    config(
        unique_key='p_partkey',
        strategy='check',
        check_cols=['p_retailprice', 'p_comment']
    )
}}

SELECT *
FROM {{ source('snowflake_sample_shop', 'part') }}

{% endsnapshot %}
