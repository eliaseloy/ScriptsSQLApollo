from pec_demanda_historica d,
     pec_item_estoque i
where d.empresa = 8
and d.revenda = 4
and d.empresa = i.empresa
and d.item_estoque = i.item_estoque
order by d.item_estoque, d.ano, d.mes