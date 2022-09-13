create database aula4;
use aula4;
show databases;
create table alunos(id int,
nome varchar(30),
datnasc date, endereco
varchar(40), sexo char(1));

alter table alunos modify
nome varchar(40);
alter table alunos
add CPF varchar(16);

alter table alunos drop endereco;
alter table alunos
add primary key(id);

insert alunos values (1,'Kaiqui','22-04-06','M','46314129927');
select * from alunos;
select id, nome, CPF from alunos;

select * from alunos where
nome like 'L%';

select id, nome from alunos 
where id between
2 and 5;

select id, nome from alunos
where id > 3;

select * from alunos where sexo
in ('M','F');

delete from alunos where
nome='Erik';

update alunos set sexo='M' where 
id=3 or id=5 or id=7;

truncate table alunos;

drop database aula4;

create table curso (id int primary key
key auto_increment,
nome_curso varchar(40));

insert curso(nome_curso) values
('Engenharia');






