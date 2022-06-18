select nf.empresa, nf.revenda, nf.numero_nota_fiscal, nf.serie_nota_fiscal, nf.tipo_transacao, nf.contador, nf.cliente, nf.dta_entrada_saida, nf.dta_documento, nf.tot_nota_fiscal,
       it.item_estoque, it.quantidade, it.val_custo_medio       
from fat_movimento_capa nf,
     fat_movimento_item it
where nf.empresa = 8
and nf.cliente = 17884
and nf.dta_entrada_saida between to_date('01/07/2009','dd/mm/yyyy') and to_date('31/12/2009','dd/mm/yyyy')
and nf.status = 'F'
and it.empresa = nf.empresa
and it.revenda = nf.revenda
and it.numero_nota_fiscal = nf.numero_nota_fiscal
and it.serie_nota_fiscal = nf.serie_nota_fiscal
and it.tipo_transacao = nf.tipo_transacao
and it.contador = nf.contador
