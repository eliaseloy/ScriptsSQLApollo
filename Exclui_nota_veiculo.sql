delete from fat_movimento_veiculo
where  empresa            = 8
and    revenda            = 1
and    numero_nota_fiscal = 1057
and    serie_nota_fiscal  = '4'
and    tipo_transacao     = 'V01'
and    contador           = 0;

delete from fat_notas_vendedor
where  empresa            = 8
and    revenda            = 1
and    numero_nota_fiscal = 1057
and    serie_nota_fiscal  = '4'
and    tipo_transacao     = 'V01'
and    contador           = 0;

delete from ofi_ficha_movimento
where  empresa            = 8
and    revenda            = 1
and    numero_nota_fiscal = 1057
and    serie_nota_fiscal  = '4'
and    tipo_transacao     = 'V01'
and    contador           = 0;

delete from fat_movimento_capa
where  empresa            = 8
and    revenda            = 1
and    numero_nota_fiscal = 1057
and    serie_nota_fiscal  = '4'
and    tipo_transacao     = 'V01'
and    contador           = 0;