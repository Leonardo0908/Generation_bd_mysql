drop database db_construindo_a_nossa_vida;

create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categorias(tipo,ativo) values("alimento",true);
insert into tb_categorias(tipo,ativo) values("Tecnologia",true);
insert into tb_categorias(tipo,ativo) values("Roupa",true);
insert into tb_categorias(tipo,ativo) values("saúde",true);

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (6,2) not null,
quantidade bigint not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias (id)
);

insert into tb_produto(nome,preco,quantidade,categoria_id)
values ("Celular",5000.00,1,2);
insert into tb_produto(nome,preco,quantidade,categoria_id)
values ("bolo",100.00,1,1);
insert into tb_produto(nome,preco,quantidade,categoria_id)
values ("Dipirona",2.00,4,4);
insert into tb_produto(nome,preco,quantidade,categoria_id)
values ("camiseta",40.00,2,3);
insert into tb_produto(nome,preco,quantidade,categoria_id)
values ("maça",2.00,4,1);
insert into tb_produto(nome,preco,quantidade,categoria_id)
values ("banana",10.00,12,1);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome Like "c%";

select * from
tb_produto inner join tb_categorias
on tb_produto.categoria_id = tb_categorias.id;

select * from tb_produto where categoria_id Like 1;