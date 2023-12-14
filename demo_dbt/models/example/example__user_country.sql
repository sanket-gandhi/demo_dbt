
{{ config(
    materialized = 'table',
    query_tag = 'dbt_demo'
    ) }}

with user_country as (
    SELECT 123 as USER_ID, 'INDIA' AS COUNTRY
    UNION
    SELECT 245 as USER_ID, 'SRI-LANKA' AS COUNTRY
    UNION
    SELECT 890 as USER_ID, 'UK' AS COUNTRY
    UNION
    SELECT 765 as USER_ID, 'US' AS COUNTRY
    UNION
    SELECT 345 as USER_ID, 'AFRICA' AS COUNTRY
    UNION
    SELECT 346 as USER_ID, 'SINGAPORE' AS COUNTRY
),
user_join as (
    SELECT t1.COUNTRY, t2.* 
    FROM user_country as t1 
    inner join {{ ref('example__user_csv') }} as t2 
    on t1.user_id = t2.user_id
),
final as (
    select COUNTRY = '{{ var('country_champion') }}' as  champion, *
    from user_join
)
select * from final