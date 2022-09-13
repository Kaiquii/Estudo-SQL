create database AULA2;
use AULA2;
create table produto(cod_prod int , desc_prod char(30), preco_prod dec(10,2));
insert produto values(1,'salchisha 2 cm',0.05);	
insert produto values(1,'sorvete 2 cm',0.05);
insert produto values(1,'bolo 2 cm',0.05);
insert produto values(1,'cenoura 2 cm',0.05);
select * from produto;
select cod_prod, desc_prod from produto;
select cod_prod as codigo_do_produto, desc_prod as descricao_do_produto from produto;
select cod_prod, desc_prod, preco_prod*1.5 as preco_com_reajuste from produto;
select distinct cod_prod, desc_prod from produto;
insert produto (cod_prod, desc_prod) values (10,'alicate');

create table cliente (cod_cli int, nome_cli char(30), rua_cli char(40), data_cli datetime);
create table clientecp (cod_cli int, nome_cli char(30), rua_cli char(40), data_cli datetime);
create table clientecp (cod_cli int,
nome_cli char(30),
rua_cli char(40),
data_cli datetime);
show tables;
insert clientecp select * from cliente;
truncate table clientecp;
alter table clientecp add column empresa char(40);
insert clientecp select cod_cli, nome_cli, rua_cli, data_cli, 'nao tem' from cliente;
update cliente 
	set data_cli='21/11/10';
update cliente
set data_cli='21/12/19',
	rua_cli='Rua da Paz 43';
    







