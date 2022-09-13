create database atividade;
USE atividade;

show databases;

CREATE TABLE Produto(cod_prod int not null,
tipo_prod char(1),
linha_prod int,
nome_prod varchar(20),
quant_prod int,
val_prod decimal(5.2)
);

insert Produto values (1,'A',1,'Mesa',100,500);
insert Produto values (2,'B',1,'Sofá',200,1500);
insert Produto values (3,'A',2,'Mesa',100,200);
insert Produto values (4,'A',2,'Armário',300,200);
insert Produto values (5,'C',1,'Cama',500,1000);
insert Produto values (6,'B',1,'Poltrona',100,250);
insert Produto values (7,'B',2,'Sofá',200,300);
insert Produto values (8,'C',2,'Cama',100,150);
insert Produto values (9,'A',1,'Armário',200,800);
insert Produto values (10,'C',1,'Guarda-Roupa',100,1500);

select * from produto;
 
select tipo_prod,
sum(quant_prod) as Qtd_Estq From
Produto
group by tipo_prod;

select linha_prod, sum(quant_prod) as Qtd_Estq
from Produto
group by linha_prod;

select tipo_prod, linha_prod,
sum(quant_prod) as Qtd_Estq
from produto
group by tipo_prod,
linha_prod;

select tipo_prod,
sum(quant_prod*val_prod) as
Val_Estq
from Produto
group by tipo_prod;

select tipo_prod, linha_prod,
sum(quant_prod*val_prod) as Val_Estq from Produto
group by tipo_prod, linha_prod;

select nome_prod,sum(quant_prod)as Qtd_Estq,
sum(quant_prod*val_prod) as Val_Estq from Produto
group by nome_prod;

select tipo_prod, sum(quant_prod)as Qtd_Estq
from Produto
group by tipo_prod having sum(quant_prod) > 500;

select nome_prod, sum(quant_prod) as Qtd_Estq,
sum(quant_prod * val_prod) as Val_Estq from Produto
group by nome_prod
having sum(quant_prod) >=500 and sum(quant_prod*val_prod)>220000.00;

select tipo_prod, linha_prod, nome_prod, sum(quant_prod) as Qtd_Estq,
sum(quant_prod*val_prod) as Val_Estq from Produto
group by linha_prod with rollup;

select tipo_prod, linha_prod, nome_prod, sum(quant_prod) as Qtd_Estq,
sum(quant_prod*val_prod) as Val_Estq from Produto
group by tipo_prod, linha_prod, nome_prod with rollup;







 


