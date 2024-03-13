--criando um banco de dados cliente 
create table livraria 
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

)
create table passoa_fisica(
cod_cliente int,
primary key (cod_cliente),foreign key (cod_cliente) references cliente(cod_cliente),
rg char (10),
cpf char (11)

)
create table pessoa_juritica(
cod_cliente int,
primary key (cod_cliente), foreign key (cod_cliente) references cliente (cod_cliente),
cnpj nvarchar (14),
ie nvarchar (12)

)
create table pedido(
cod_pedido nchar(10) primary key,
cod_cliente int 
foreign key,
data date,
valor_pedido decimal(5,2)

)
create table item_pedido(
cod_pedido int
primary key(cod_pedido), foreign key (Cod_pedido) references pedido,
cod_livro int,
primary key (cod_livro), foreign key (cod_livro) references livo,
qtde_pedido char(15),
valor_item decimal (2,2)

)
create table livro(
cod_livro nvarchar(8) primary key,
cod_editora int foreign key,
valor decimal(2,2),
ano_publicacao date(),
categoria nvarchar(30),
titulo nvarchar (20),
autor nvarchar (20),

)
 create table editora(
 cod_editora nvarchar (20) primary key,
 telefone_1 numeric (11),
 telefone_2 numeric (11),
 nome_contato nvarchar (20),
 email nvarchar (50)

)
create table estoque(
cod_editora int,
primary key (cod_editora), foreign key (cod_editora) references livro,
cod_livro int, 
primary key (cod_livro), foreign (cod_livro) references livro,
qtde_estoque numeric (4)
)