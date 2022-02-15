-- drop database db_pizzaria_legal;

create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipos char(255) not null,
broto char,
primary key (id)
);

insert into tb_categoria(tipos,broto) values ("doce","S");
insert into tb_categoria(tipos,broto) values ("salgada","S");
insert into tb_categoria(tipos,broto) values ("doce","N");
insert into tb_categoria(tipos,broto) values ("salgada","N");

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome char(255) not null,
preco decimal(5,2) not null,
vegetariana char not null,
tipo_id bigint,
primary key (id),
foreign key (tipo_id) references tb_categoria(id)
); 

insert into tb_pizza (nome,preco,vegetariana,tipo_id)
values ("Frango",40,"N",4);
insert into tb_pizza (nome,preco,vegetariana,tipo_id)
values ("4 Queijo",45,"N",4);
insert into tb_pizza (nome,preco,vegetariana,tipo_id)
values ("Chocolate",50,"N",3);
insert into tb_pizza (nome,preco,vegetariana,tipo_id)
values ("morango",20,"N",1);
insert into tb_pizza (nome,preco,vegetariana,tipo_id)
values ("Brocolis",30,"S",2);
insert into tb_pizza (nome,preco,vegetariana,tipo_id)
values ("couve",25,"S",2);
insert into tb_pizza (nome,preco,vegetariana,tipo_id)
values ("Bauru",50,"N",4);

select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco >= 29 and preco <= 60;

select * from tb_pizza where nome like "c%";

select * from 
tb_pizza inner join tb_categoria
on (tb_pizza.tipo_id) = tb_categoria.id;

select * from tb_pizza where tipo_id like 1 ;
select * from tb_pizza where tipo_id like 3 ;

