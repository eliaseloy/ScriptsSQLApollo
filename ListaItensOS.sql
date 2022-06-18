select o.empresa, o.revenda, o.nro_os, o.item_estoque, o.quantidade,
i.empresa, i.item_estoque, i.item_estoque_pub, i.des_item_estoque
from ofi_peca_os o,
pec_item_estoque i
where o.empresa = 8
and o.revenda = 5
and o.nro_os = 1655
and i.empresa = o.empresa
and i.item_estoque = o.item_estoque