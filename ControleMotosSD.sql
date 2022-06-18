select vei.empresa, vei.veiculo, vei.chassi, vei.cor,
       nf.empresa, nf.revenda, nf.numero_nota_fiscal, nf.tipo_transacao, nf.cliente, nf.dta_entrada_saida,
       it.empresa, it.revenda, it.numero_nota_fiscal, it.veiculo
from vei_veiculo vei,
     fat_movimento_capa nf,
     fat_movimento_veiculo it
where vei.empresa = 8
and vei.situacao = 'SD'
and nf.tipo_transacao = 'V23'
and vei.veiculo = it.veiculo
and it.empresa = nf.empresa
and it.numero_nota_fiscal = nf.numero_nota_fiscal
order by nf.dta_entrada_saida
