select t.nome, t.e_mail_trabalho, t.e_mail_casa 
from fat_cliente t 
where t.e_mail_trabalho is not null 
or t.e_mail_casa is not null
