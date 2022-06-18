select v.empresa, v.veiculo, v.cor, v.chassi, v.revenda_origem, v.localizacao,
       i.empresa, i.revenda, i.numero_nota_fiscal, i.serie_nota_fiscal, i.tipo_transacao, i.veiculo,
       n.empresa, n.revenda, n.numero_nota_fiscal, n.serie_nota_fiscal, n.dta_documento, n.status
from vei_veiculo v,
     fat_movimento_veiculo i,
     fat_movimento_capa n
where v.empresa = 8
and v.situacao = 'SD'
and i.empresa = v.empresa
and i.veiculo = v.veiculo
and i.tipo_transacao = 'V23'
and n.empresa = v.empresa
and n.revenda = v.revenda_origem
and n.numero_nota_fiscal = i.numero_nota_fiscal
and n.serie_nota_fiscal = i.serie_nota_fiscal
and n.status = 'F'
