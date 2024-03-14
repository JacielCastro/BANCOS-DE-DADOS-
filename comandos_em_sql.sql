-- usando o banco de dados 
use sistema_biblioteca;

-- buscando tebela funcionario
select * from funcionario;

-- buscando tabela atendente
select * from atendente;

-- buscando nomes de funcionario 
select * from funcionario order by nome;

--buscando todos os nome que comesa com as letras ca
select * from FUNCIONARIO where nome like 'ca%';

-- contando a quantidade que tem na coluna funcionario
select count (*) as total_funcionario from FUNCIONARIO;

-- buscando nomes dos funcionario pelo o sobrenome 
select * from FUNCIONARIO where nome like '%silva';

-- buscando tabela livro
select * from LIVRO;
-- contando a quantidade que tem na coluna livro
select COUNT(*) as total_livro from livro;

-- ordenar todos os livros por ano de
select * from LIVRO order by ano_publicacao;

-- pega a lista dos livro em ordem decresente
select * from livro order by ano_publicacao desc;

-- busca os nome dos autores
select * from LIVRO order by autor;