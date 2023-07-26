with ipca as (
    select * from {{ref('ipca')}}
)

select
    *,
    case when pct_var_mes < 0.00 then 'Deflação'
         else 'Inflação'
    end as movimento
from ipca