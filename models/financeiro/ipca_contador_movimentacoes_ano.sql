with ipca_deflacao as (
    select ano, movimento from {{ref('ipca_movimentacoes')}}
)

select
    ano,
    movimento,
    count(movimento) as frequencia
from ipca_deflacao
group by ano, movimento
