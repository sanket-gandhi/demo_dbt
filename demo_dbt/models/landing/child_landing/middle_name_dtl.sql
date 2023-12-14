with middle_name as (
    select 'sunil' as m_name
    UNION
    select 'ajit' as m_name
    UNION
    select 'mahavir' as m_name
),
final as (
    select * from middle_name
)
select * from final