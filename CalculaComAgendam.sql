select os.nro_os, os.dta_encerramento, os.categoria_os, os.contato,
con.contato, con.usuario_abriu,
sol.contato, sol.nro_solicitacao, sol.des_solicitacao,
usu.usuario, usu.login
from ofi_ordem_servico os,
   ofi_solicitacao sol,
   cac_contato con,
   ger_usuario usu
where os.empresa = 2
and os.revenda = 2
and os.situacao_os = 9
and os.dta_encerramento >= to_date('10/01/2008','mm/dd/rrrr')
and os.dta_encerramento <= to_date('10/31/2008','mm/dd/rrrr')
and os.contato = con.contato
and con.contato = sol.contato
and con.usuario_abriu = usu.usuario
order by usu.login, os.contato, sol.nro_solicitacao