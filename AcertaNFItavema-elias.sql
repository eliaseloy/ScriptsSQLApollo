update fat_movimento_capa
set VAL_BASE_ICMS = '0,00'
where empresa = 8
and revenda = 9
and numero_nota_fiscal = 1853
and tipo_transacao = 'P02'
and cliente = 17878;

update fat_movimento_capa
set val_icms = '0,00'
where empresa = 8
and revenda = 9
and numero_nota_fiscal = 1853
and tipo_transacao = 'P02'
and cliente = 17878;

update fat_movimento_capa
set val_outros_icms = tot_mercadoria
where empresa = 8
and revenda = 9
and numero_nota_fiscal = 1853
and tipo_transacao = 'P02'
and cliente = 17878;

update fat_movimento_capa
set val_base_pis = '0,00'
where empresa = 8
and revenda = 9
and numero_nota_fiscal = 1853
and tipo_transacao = 'P02'
and cliente = 17878;

update fat_movimento_capa
set val_pis = '0,0000'
where empresa = 8
and revenda = 9
and numero_nota_fiscal = 1853
and tipo_transacao = 'P02'
and cliente = 17878;

update fat_movimento_capa
set val_base_cofins = '0,00'
where empresa = 8
and revenda = 9
and numero_nota_fiscal = 1853
and tipo_transacao = 'P02'
and cliente = 17878;

update fat_movimento_capa
set val_cofins = '0,0000'
where empresa = 8
and revenda = 9
and numero_nota_fiscal = 1853
and tipo_transacao = 'P02'
and cliente = 17878;

update fat_movimento_item
set VAL_OUTROS = VAL_TOTAL_NOTA_ITEM
where empresa = 8
and revenda = 9
and numero_nota_fiscal = 1853
and tipo_transacao = 'P02';

update fat_movimento_item
set VAL_ICMS = '0,00'
where empresa = 8
and revenda = 9
and numero_nota_fiscal = 1853
and tipo_transacao = 'P02';

update fat_movimento_item
set BASE_PIS = '0,00'
where empresa = 8
and revenda = 9
and numero_nota_fiscal = 1853
and tipo_transacao = 'P02';

update fat_movimento_item
set ALIQUOTA_ICMS = '0,00'
where empresa = 8
and revenda = 9
and numero_nota_fiscal = 1853
and tipo_transacao = 'P02';

update fat_movimento_item
set BASE_ICMS = '0,00'
where empresa = 8
and revenda = 9
and numero_nota_fiscal = 1853
and tipo_transacao = 'P02';

update fat_movimento_item
set BASE_COFINS = '0,00'
where empresa = 8
and revenda = 9
and numero_nota_fiscal = 1853
and tipo_transacao = 'P02';

update fat_movimento_item
set VAL_PIS = '0,0000'
where empresa = 8
and revenda = 9
and numero_nota_fiscal = 1853
and tipo_transacao = 'P02';

update fat_movimento_item
set VAL_COFINS = '0,0000'
where empresa = 8
and revenda = 9
and numero_nota_fiscal = 1853
and tipo_transacao = 'P02';

update fat_movimento_item
set CODFISCAL_OPERACAO = '317'
where empresa = 8
and revenda = 9
and numero_nota_fiscal = 1853
and tipo_transacao = 'P02';
