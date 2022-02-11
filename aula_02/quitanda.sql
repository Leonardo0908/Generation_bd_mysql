-- Criando o banco de dados db_quitanda
create database db_quitanda;

-- 
use db_quitanda;

-- cria tabela 
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal,
primary key(id)
);

-- insere coisa na tabela 
insert into tb_produtos (nome,quantidade,preco) 
values ("maçã",10,1.99);
insert into tb_produtos (nome,quantidade,preco) 
values ("banana",13,4.99);
insert into tb_produtos (nome,quantidade,preco) 
values ("manga",20,5.49);
insert into tb_produtos (nome,quantidade,preco) 
values ("Melancia",3,10.00);
insert into tb_produtos (nome,quantidade,preco) 
values ("Cebola",100,1.50);

select * from tb_produtos;

update tb_produtos set preco = 3.99 where id = 1;

delete from tb_produtos where id = 13;

-- mostra coisas da tabela
select nome, preco from tb_produtos;

-- descreve oque quer q tras da tabela 
select * from tb_produtos where preco > 1.99;
select * from tb_produtos where preco > 5.99 or nome = "banana";


insert into tb_produtos (nome,quantidade,preco) 
values ("batata",150,5.50);

set SQL_SAFE_UPDATES = 0; -- liga
-- set SQL_SAFE_UPDATES = 1; desliga  

-- faz a inserção do produto na tabela 
update tb_produtos set descricao = "Banana Ouro";

-- modifica formato do decimal 
alter table tb_produtos modify preco decimal(8,2); -- 000000.00

-- adiciona produto a tabela geal 
alter table tb_produtos add descricao varchar(255);

-- remove geral algo da tabela 
alter table tb_produtos drop descricao;

-- deleta a tabela por completo 
delete from tb_produtos;