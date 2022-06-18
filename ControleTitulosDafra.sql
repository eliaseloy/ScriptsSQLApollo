select tit.empresa, tit.revenda, tit.titulo, tit.dta_emissao, tit.dta_vencimento, tit.val_titulo,
       fic.empresa, fic.revenda, fic.numero_nota_fiscal, fic.nro_os, fic.chassi,
       ord.empresa, ord.revenda, ord.nro_os,
       os.empresa, os.revenda, os.contato, os.cliente_emissao_nf, os.cliente_faturamento
from ofi_ficha_movimento fic,
     ofi_atendimento os,
     ofi_ordem_servico ord,
     fin_titulo tit
where tit.empresa = 8
and tit.status = 'EM'
and tit.cliente = 8054
and fic.empresa = tit.empresa
and fic.revenda = tit.revenda
and fic.numero_nota_fiscal = tit.titulo
and fic.nro_os > 0
and ord.empresa = tit.empresa
and ord.revenda = tit.revenda
and ord.nro_os = fic.nro_os
and os.empresa = tit.empresa
and os.revenda = tit.revenda
and os.contato = ord.contato
order by fic.empresa, fic.revenda, tit.titulo

