-- criando um novo banco de dados Senac
create database Senac;
-- inicializando o banco de dados 
use Senac;
-- criando tabela
create table endereco(
	id_Endereco int identity(1,1) primary key,
	estado nvarchar(30) ,
	cidade nvarchar(30),
	barrio nvarchar(30),
	conjunto nvarchar(30),
	logradouro nvarchar(30),
	rua nvarchar(30),
	cep nchar(8) not null,
	numero nvarchar(6)
);
insert into endereco
values
('rio grande do norte',
'natal',
'cidade satelite',
'satelite',
'proximo a igreja batista',
'rio doce',
59124789,
1030);
select * from endereco;

create table senac(
	cnpj nchar(14) primary key,
	id_Endereco int
	foreign key (id_Endereco) references endereco(id_Endereco),
);
insert into senac(cnpj)
values 
('78945612336925');

select * from senac;

create table funcionario(
	id_Endereco int
	foreign key (id_Endereco) references endereco(id_Endereco),
	matricula int primary key,
	nome varchar (50) not null,
	data_Nascimento date,
	data_inicial date,
	data_termino date,
	cpf nchar (11),
);
create table contrato (
	id_contrato int primary key,
	cnpj nchar (14)
	foreign key (cnpj) references senac (cnpj),
	matricula int 
	foreign key (matricula) references funcionario(matricula),
	data_inicial date,
	data_termino date,	
);
create table pedagogo(
	matricula int identity(1,1) primary key,
	nome varchar (50) not null,-- terna o nome obrigatorio existir
	cpf nchar (11) not null,
	data_Nascimento date ,
	telefone varchar(15),
	genero nvarchar (10),
	email nvarchar(20),
);
create table professor(
	matricula int identity (1,1) primary key,
	nome varchar (50),
	data_nascimento date,
	cpf nchar (11) not null,
	genero nvarchar (10),
	email nvarchar (20),
	telefone varchar (15),
);
create table porteiro(
	matricula int identity(1,1) primary key,
	nome varchar (50),
	data_nascimento date,
	cpf nchar (11) not null,
	genero nvarchar (10),
	telefone nvarchar (15),
	email nvarchar (20),
);
create table asg (
	matricula int identity (1,1) primary key,
	nome varchar (50),
	data_nascimento date,
	cpf nchar (11) not null,
	genero nvarchar (10),
	telefone nvarchar (15),
	email nvarchar (20),
);
create table curso(
	id_curso int identity(1,1) primary key,
	nome_curso nvarchar (20) not null,
	data_inicio date,
	data_termino date,
	duraçao_curso nvarchar (20),
	horario_curso time,
);
create table uc(
	id_uc int
	nome_uc nvarchar(30),
	assunto nvarchar(30),
	matricula int 
	foreign key (matricula) references professor (matricula),
	data_inicial date,
	data_termino date,
	id_curso int
	foreign key (id_curso) references curso(id_curso),

);
create table turma(
	id_turma int primary key,
	id_curso int
	foreign key (id_curso) references curso(id_curso),
	id_uc int
	foreign key(id_uc) references uc(id_uc);
);
create table aluno(
	id_aluno int primary key,
	nome nvarchar (50),
	cpf char(11)not null,
	data_nascimento date,
	genero nvarchar(10),
	telefone nvarchar(15),
	email nvarchar(30),
	idendereco int,
	foreign key (id_endereco) references endereco(id_endereco),
);
create table a_psg(
	id_a_psg int primary key,
	nome nvarchar (50),
	cpf char(11)not null, 
	data_nascimento date,
	genero nvarchar(10),
	telefone nvarchar(15),
	email nvarchar(30),
);
create table a_comercial(
	id_a_comecial int primary key,
	nome nvarchar (50),
	cpf char(11) not null,
	data_nascimento date,
	genero nvarchar(10),
	telefone nvarchar(15),
	email nvarchar(30),
);
create table a_prendiz(
	id_a_aprendiz int primary key,
	nome nvarchar (50),
	cpf char(11) not null,
	data_nascimento date,
	genero nvarchar(10),
	telefone nvarchar(15),
	email nvarchar(30),
);
create table matricula(
	cnpj nchar (14)
	foreign key (cnpj) references senac(cnpj), 
	id_matricula int primary key,
	id_aluno int 
	foreign key (id_aluno) references aluno(id_aluno),
	id_a_psg int 
	foreign key (id_a_psg) references a_psg(id_a_psg),
	id_comercial int 
	foreign key (id_comercial) references a_comecial(id_a_comercial),
	id_a_aprendiz int 
	foreign key (id_a_aprenciz) references a_aprendiz(id_a_aprendiz),
);