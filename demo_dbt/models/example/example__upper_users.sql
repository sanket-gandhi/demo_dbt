with main_user as (
    select * from {{ref('user')}}
),
final as (
    select * from main_user where user_id > 500
)
select * from final