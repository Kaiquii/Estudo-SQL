CREATE DATABASE aula3;
USE aula3;

CREATE TABLE Funcionario(
Cod_Func int Not Null,
Nome_Func char(50) Not Null,
RG_Func char(15) Not Null,
Sexo_Func char(1) Not Null Default 'F',
Sal_Func decimal(10,2) Null Default 0,
Constraint PK_Func Primary Key(Cod_Func),
Constraint UQ_Func Unique(RG_Func),
Constraint CH_Func1 Check(Sexo_Func IN ('F','M')),
Constraint CH_Func2 Check(Sal_Func>0)
);

CREATE TABLE Dependente(
Cod_Dep int not null,
Cod_Func int not null,
DataNasc_Dep datetime Not Null,
Sexo_Dep char(1) Not Null Default 'M',
Constraint PK_Dep Primary Key(Cod_Dep),
Foreign Key(Cod_Func) References Funcionario(Cod_Func),
Constraint CH_Dep Check(Sexo_Dep in ('F','M')))

