-- drop database db_cidade_das_carnes;

create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
tipo varchar (255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria(tipo,ativo) values ("Ave",true);
insert into tb_categoria(tipo,ativo) values ("Bovino",true);
insert into tb_categoria(tipo,ativo) values ("Suino",true);
insert into tb_categoria(tipo,ativo) values ("preparados",true);

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(6,2) not null,
dtValidade date not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto(nome,preco,dtValidade,categoria_id)
values ("Picanha",80.00,"2022-05-25",2);
insert into tb_produto(nome,preco,dtValidade,categoria_id)
values ("Bacon",30.00,"2022-03-25",3);
insert into tb_produto(nome,preco,dtValidade,categoria_id)
values ("file de frango",20.00,"2022-05-25",1);
insert into tb_produto(nome,preco,dtValidade,categoria_id)
values ("peito de frango",30.00,"2022-05-25",1);
insert into tb_produto(nome,preco,dtValidade,categoria_id)
values ("Medalhão",25.00,"2022-03-25",4);
insert into tb_produto(nome,preco,dtValidade,categoria_id)
values ("carne moida",2.00,"2022-03-25",2);

select * from tb_produto where preco > 50;

select * from tb_produto where preco >= 3 and preco <= 60;

select * from tb_produto where nome Like "%c%";

select * from
tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto where categoria_id like 1;