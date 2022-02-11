create database db_funcionaries;

use db_funcionaries;

create table db_funcionaries(
id bigint (5) auto_increment,
nome varchar (255),
setor varchar (255),
funcao varchar(255),
salario decimal (8,2),
primary key (id)
);

insert into db_funcionaries(nome,setor,funcao,salario)
value ("Luis","tecnologia","Java",5000);
insert into db_funcionaries(nome,setor,funcao,salario)
value ("Jacque","tecnologia","Java",7000);
insert into db_funcionaries(nome,setor,funcao,salario)
value ("Rafael","tecnologia","Java",6000);
insert into db_funcionaries(nome,setor,funcao,salario)
value ("Leonardo","tecnologia","Java Junior",1500);
insert into db_funcionaries(nome,setor,funcao,salario)
value ("ana","administração","escritorio",1000);

select * from db_funcionaries where salario > 2000;
select * from db_funcionaries where salario < 2000;

select * from db_funcionaries;





