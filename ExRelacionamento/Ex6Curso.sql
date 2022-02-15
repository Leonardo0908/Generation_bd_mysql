-- drop database db_cursoDaMinhaVida;

create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categorias(
id bigint auto_increment,
categoria varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categorias (categoria,ativo) values ("idioma",true);
insert into tb_categorias (categoria,ativo) values ("Tecnologia",true);
insert into tb_categorias (categoria,ativo) values ("culinaria",true);


create table tb_curso(
id bigint auto_increment,
nome varchar (255) not null,
tempo date not null,
preco decimal (8,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_curso (nome,tempo,preco,categoria_id)
values ("Java","02-03-25",10000.00,2);
insert into tb_curso (nome,tempo,preco,categoria_id)
values ("confeiteiro","1-02-20",2500.00,3);
insert into tb_curso (nome,tempo,preco,categoria_id)
values ("cozinheiro","3-02-00",4000.00,3);
insert into tb_curso (nome,tempo,preco,categoria_id)
values ("MySQL","1-03-25",20.00,2);
insert into tb_curso (nome,tempo,preco,categoria_id)
values ("javanes","2-01-05",2.00,1);
insert into tb_curso (nome,tempo,preco,categoria_id)
values ("ADS","2-03-25",3000.00,2);
insert into tb_curso (nome,tempo,preco,categoria_id)
values ("espanhol","2-01-05",3.00,1);

select * from tb_curso where preco > 50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where nome Like "j%";

select * from 
tb_curso inner join tb_categorias
on tb_curso.categoria_id = tb_categorias.id;

select * from tb_curso where categoria_id Like 2;



