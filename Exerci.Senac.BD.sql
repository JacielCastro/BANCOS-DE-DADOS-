-- criando um novo banco de dados Senac
create database Senac;
-- inicializando o banco de dados 
use Senac;
-- criando tabela
create table endereco(
	id_Endereco int identity(1,1) primary key,
	estado nvarchar(30) not null,
	cidade nvarchar(30) not null,
	barrio nvarchar(30),
	conjunto nvarchar(30),
	logradouro nvarchar(30),
	rua nvarchar(30),
	cep nchar(8),
	numero nvarchar(6)

);
create table senac(
	cnpj nchar(14),
	id_Endereco int
	foreign key (id_Endereco) references endereco(id_Endereco),

);
create table funcionario(
	id_Endereco int
	foreign key (id_Endereco) references endereco(id_Endereco),
	matricula decimal(8),
	nome varchar (50) not null,
	data_Nascimento date (),
	cpf nchar (11),
);


