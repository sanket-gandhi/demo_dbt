with first_name as (
    select 'sanket' as f_name
    UNION
    select 'akshay' as f_name
    UNION
    select 'gaurav' as f_name
),
final as (
    select * from first_name
)
select * from final
