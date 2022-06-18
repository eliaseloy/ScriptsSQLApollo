select nf.empresa, nf.revenda, nf.numero_nota_fiscal, nf.dta_documento, nf.tot_nota_fiscal, nf.fatoperacao,
       op.empresa, op.revenda, op.operacao, op.val_operacao_condicao,
       pag.empresa, pag.revenda, pag.titulo, pag.cliente, pag.val_pagamento, pag.dta_pagamento
from fat_movimento_capa nf,
     fat_operacao_condicao op,
     fin_titulo_pagamento pag
where nf.empresa = 8
and nf.revenda = 2
and nf.numero_nota_fiscal = 1130
and op.empresa = nf.empresa
and op.revenda = nf.revenda
and pag.empresa = nf.empresa
and pag.revenda = nf.revenda
and op.operacao = nf.fatoperacao
and op.val_operacao_condicao = pag.val_pagamento
and pag.dta_pagamento = nf.dta_documento
order by nf.empresa, nf.revenda, pag.titulo

ITENS
select nf.empresa, nf.revenda, nf.numero_nota_fiscal, nf.dta_documento, nf.tot_nota_fiscal, nf.fatoperacao,
       it.empresa, it.revenda, it.numero_nota_fiscal, it.val_total_nota_item, it.val_desconto_irrf,
from fat_movimento_capa nf,
     fat_movimento_desc_livre it,
where nf.empresa = 8
and nf.revenda = 2
and nf.numero_nota_fiscal = 1130
and it.empresa = nf.empresa
and it.revenda = nf.revenda
and it.numero_nota_fiscal = nf.numero_nota_fiscal
order by nf.empresa, nf.revenda

PAGTO
select op.empresa, op.revenda, op.operacao, op.val_operacao_condicao,
       pag.empresa, pag.revenda, pag.titulo, pag.cliente, pag.val_pagamento, pag.dta_pagamento, nf.dta_documento
from fat_operacao_condicao op,
     fat_movimento_capa nf,
     fin_titulo_pagamento pag
where op.empresa = 8
and op.revenda = 2
and op.operacao = 2126
and pag.empresa = nf.empresa
and pag.revenda = nf.revenda
and op.operacao = nf.fatoperacao
and op.val_operacao_condicao = pag.val_pagamento
and pag.dta_pagamento = nf.dta_documento
order by op.empresa, op.revenda, pag.titulo


BUSCA RETORNOS POR NF
select t.*, t.rowid from vei_retorno t
where empresa = 8
and revenda = 2
and numero_nota_fiscal = 1130

