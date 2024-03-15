-- usando o banco de dados sistema_biblioteca
use sistema_biblioteca

-- Selecionar todos os funcionarios que são gerentes
select f.nome
from funcionario f
join gerente g on g.matricula = f.matricula;

-- Selecionar todos os livros com ano de publicação acima de 2018
select * from livro where ano_publicacao > 2018;
select * from livro
-- Titulo do livro onde o nome do autor começa com Paulo
select titulo from livro where autor like 'paulo%';
-- Mostre todos os livros que são de tecnologia
select livro.titulo
from livro
join tecnologia on tecnologia.numero_registro = livro.numero_registro;

-- ver todos os atributos e seu tipo de uma tabela especifica
select column_name, data_type
from information_schema.COLUMNS
where TABLE_NAME = 'livro';

-- lista todos os eventos 
select * from EVENTO;

-- lista os eventos acima de 100 
select * from EVENTO
where custo > 100.00;

-- listando os eventos onde tipo é igual a palestra  e o custo sendo maior que 100.00 reais.
select * from EVENTO 
where tipo = 'palestra'
and custo > 100;

-- listando os eventos onde tipo seja palestra com o custo de 100.00 reais no ano 2022
select * from EVENTO
where tipo = 'palestra'
-- verificando os eventos com ano maior 2022 com o custo maior que 100.00 reais
and custo > 100.00 -- verificação logica 
and year (data) > 2022; 