 -- drop database db_generation_game_online;

create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
categorias char(255) not null,
alvo char(255) not null,
primary key (id)
);

-- inserindo dados a tabela classe

insert into tb_classe (categorias,alvo) value ("arqueiro","unico");
insert into tb_classe (categorias,alvo) value ("soldado","unico");
insert into tb_classe (categorias,alvo) value ("mago","multiplo");
insert into tb_classe (categorias,alvo) value ("construçao","multiplo");

select * from tb_classe;

create table tb_personagem(
id int auto_increment,
nome char(255) not null,
ataque int not null,
defesa int not null,
vida int not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_classe(id)
);

insert into tb_personagem (nome,ataque,defesa,vida,categoria_id) 
values ("Principe",3000,1100,5000,2);
insert into tb_personagem (nome,ataque,defesa,vida,categoria_id) 
values ("Princesa",2500,1050,2000,1);
insert into tb_personagem (nome,ataque,defesa,vida,categoria_id) 
values ("Merlin",1500,400,1000,3);
insert into tb_personagem (nome,ataque,defesa,vida,categoria_id) 
values ("Cacto",500,100,900,2);
insert into tb_personagem (nome,ataque,defesa,vida,categoria_id) 
values ("Fornalha",500,200,3500,4);
insert into tb_personagem (nome,ataque,defesa,vida,categoria_id) 
values ("arqueReal",1500,4000,2000,1);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa >= 1000 AND defesa <= 2000;

select* from tb_personagem where nome Like "c%";

select * from 
tb_personagem inner join tb_classe
on tb_personagem.categoria_id = tb_classe.id;

select * from tb_personagem where categoria_id like 1;

