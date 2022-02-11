create database db_ecommerce;

use db_ecommerce;

create table db_produtos(
id bigint(5) auto_increment,
nome varchar (255),
tipo varchar(20),
marca varchar(20),
valor decimal (8,2),
primary key (id)
);

insert into db_produtos (nome,tipo,marca,valor)
value ("camisa","roupa","nike",150);
insert into db_produtos (nome,tipo,marca,valor)
value ("calça","roupa","adidas",250);
insert into db_produtos (nome,tipo,marca,valor)
value ("blusa frio","roupa","nike",350);
insert into db_produtos (nome,tipo,marca,valor)
value ("camisa","roupa","nike",150);
insert into db_produtos (nome,tipo,marca,valor)
value ("celular","eletronico","xaomi",2000);
insert into db_produtos (nome,tipo,marca,valor)
value ("televisão","eletronico","sony",3000);
insert into db_produtos (nome,tipo,marca,valor)
value ("carro","auto movel","BMW",100000);
insert into db_produtos (nome,tipo,marca,valor)
value ("bone","roupa","nike",350);

select * from db_produtos where valor > 500;
select * from db_produtos where valor < 500;

select * from db_produtos;

