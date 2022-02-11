create database db_escola;

use db_escola;

create table db_alunos(
id bigint(5) auto_increment,
nome varchar (255),
idade int,
sexo char,
nota decimal (4,2),
primary key (id)
);

insert into db_alunos (nome,idade,sexo,nota)
value ("Leonardo",23,"M",8);
insert into db_alunos (nome,idade,sexo,nota)
value ("Ana",20,"F",9);
insert into db_alunos (nome,idade,sexo,nota)
value ("Matheus",30,"I",6);
insert into db_alunos (nome,idade,sexo,nota)
value ("marcelo",27,"M",4);
insert into db_alunos (nome,idade,sexo,nota)
value ("jacque",24,"F",10);
insert into db_alunos (nome,idade,sexo,nota)
value ("luis",25,"M",9.8);
insert into db_alunos (nome,idade,sexo,nota)
value ("Rafael",26,"M",9.9);
insert into db_alunos (nome,idade,sexo,nota)
value ("caio",15,"M",3);

select * from db_alunos where nota > 7;
select * from db_alunos where nota < 7;