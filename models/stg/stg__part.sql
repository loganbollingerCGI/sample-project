
WITH part AS (

    SELECT *
    FROM {{ ref('snap__part') }}
    WHERE dbt_valid_to IS NULL

),

cleaned AS (

    SELECT
        p_partkey AS part_id,
        INITCAP(p_name) AS name,
        p_mfgr AS mfgr,
        p_brand AS brand,
        p_type AS type,
        p_retailprice AS retailprice,
        TRIM(p_comment) AS comment
    FROM part

)

SELECT *
FROM cleaned
