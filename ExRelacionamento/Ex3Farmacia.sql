-- drop database db_farmacia_do_bem;

create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255),
perecivel char,
primary key (id)
);

insert into tb_categoria (tipo,perecivel) values("generico","S");
insert into tb_categoria (tipo,perecivel) values("higiene","N");
insert into tb_categoria (tipo,perecivel) values("alimento","S");
insert into tb_categoria (tipo,perecivel) values("medicamento","S");

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (6,2) not null,
dtValidade date null,
tipo_id bigint,
primary key (id),
foreign key (tipo_id) references tb_categoria(id)
);

insert into tb_produto(nome,preco,dtValidade,tipo_id)
values ("Sabonete",5.00,"2026-02-23",2);
insert into tb_produto(nome,preco,dtValidade,tipo_id)
values ("Leite em po ",60.00,"2025-05-21",3);
insert into tb_produto(nome,preco,dtValidade,tipo_id)
values ("Dipirona",3.00,"2023-05-21",4);
insert into tb_produto(nome,preco,dtValidade,tipo_id)
values ("Bopflex",2.00,"2022-04-21",1);
insert into tb_produto(nome,preco,dtValidade,tipo_id)
values ("Shampoo",7.00,"25-10-20",2);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "b%";

select * from 
tb_produto inner join tb_categoria
on tb_produto.tipo_id = tb_categoria.id;

select * from tb_produto where tipo_id like 1;
