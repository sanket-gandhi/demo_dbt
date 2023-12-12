with main_user as (
    select * from {{ref('user')}}
),
final as (
    select * from main_user
)
select * from final