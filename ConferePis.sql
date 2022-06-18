select n.empresa, n.revenda, n.numero_nota_fiscal, n.dta_entrada_saida, n.tot_nota_fiscal, n.val_pis, n.val_cofins
from fat_movimento_capa n
where n.empresa = 8
and n.dta_entrada_saida between to_date('01/12/2009','dd/mm/yyyy') and to_date('31/12/2009','dd/mm/yyyy')
and n.status = 'F'
and n.tipo_nf is null
order by n.revenda
