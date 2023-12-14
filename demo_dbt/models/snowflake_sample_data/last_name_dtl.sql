with last_name as (
    select 'gandhi' as l_name
    UNION
    select 'shaha' as l_name
    UNION
    select 'phade' as l_name
),
final as (
    select * from last_name
)
select * from final
