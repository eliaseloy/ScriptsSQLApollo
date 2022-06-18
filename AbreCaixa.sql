update fin_saldo_caixa
set DIA_ENCERRADO = 'N'
where empresa = 8
and revenda = 6
and caixa = 1
and dta_saldo = to_date('20/08/2010','dd/mm/yyyy');

