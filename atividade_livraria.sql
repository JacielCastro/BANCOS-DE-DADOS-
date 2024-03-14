--criando um banco de dados cliente 
create database livraria 
--usando o banco de dados criado
use livravia;
--criando uma tabela da livraria 
create table cliente(
cod_cliente nvarchar (10) primary key,
nome nchar(30),
email nvarchar(50),
telefone_1 numeric(11),
telefone_2 numeric(11),
rua nvarchar (30),
barrio nvarchar (30),
cidade nvarchar (30),
estado nvarchar (30)
);

insert into cliente(cod_cliente,nome)
values 
-- cod_cliente    nome    
('2030616265','jose carlos'),
('2121585895','luiz inacio'),
('3131252621','diego rodrigo'),
('4151618987','debora silva'),
('5154585965','diego silva'),
('6465877958','josimar rodrigo')
 
 -- comsulta registro da tabela 
 select * from cliente;

-- buscando por atributo
select cod_cliente from cliente;

-- consultando todos cliente em uma tabela especifica: 
--de uma forma simplificada



-- contagem de valores de uma tabela 
select * from cliente; 
select count(*) as total_cliente from cliente;

-- contagem de valores em uma coluna especifica
select count(nome) as tatal_cliente from cliente;


create table passoa_fisica(
cod_cliente nvarchar (10),
primary key (cod_cliente),
foreign key (cod_cliente) references cliente(cod_cliente),
rg char (10),
cpf char (11)

)
create table pessoa_juritica(
cod_cliente nvarchar (10),
primary key (cod_cliente),
foreign key (cod_cliente) references cliente (cod_cliente),
cnpj nvarchar (14),
ie nvarchar (12)

)
create table pedido(
cod_pedido nchar(10) primary key,
cod_cliente nvarchar (10), 
foreign key (cod_cliente) references cliente (cod_cliente), 
data date,
valor_pedido decimal(5,2)

)

create table livro(
cod_livro nvarchar(8) primary key,
cod_editora int,
valor decimal(2,2),
ano_publicacao date,
categoria nvarchar(30),
titulo nvarchar (20),
autor nvarchar (20),

)
create table item_pedido(
cod_pedido nchar(10),
primary key(cod_pedido),
foreign key (Cod_pedido) references pedido (cod_pedido),
cod_livro nvarchar(8),
foreign key (cod_livro) references livro (cod_livro),
qtde_pedido char(15),
valor_item decimal (2,2)

)
 create table editora(
 cod_editora nvarchar (20) primary key,
 telefone_1 numeric (11),
 telefone_2 numeric (11),
 nome_contato nvarchar (20),
 email nvarchar (50)

)
create table estoque(
cod_editora nvarchar (20),
foreign key (cod_editora) references livro(cod_livro),
cod_livro nvarchar (8), 
foreign key (cod_livro) references livro(cod_livro),
qtde_estoque numeric (4)
)
--buscando toda a tabela 
select * from pedido;

-- buscando por atributo
select valo_pedido from pedido;

-- 