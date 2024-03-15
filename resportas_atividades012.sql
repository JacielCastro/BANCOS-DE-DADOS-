--usando o banco de dados sistema_biblioteca 
use sistema_biblioteca;

-- questão 1
select * from LIVRO_BIBLIOTECA where cnpj = 12345678000123;

-- questão 2
select * from BIBLIOTECARIO;

-- questão 3 
select * from LIVRO where numero_registro = 10;

-- questão 4
select * from WORKSHOP 
where id_evento.custo > 150.00;

-- questão 5
select LIVRO.titulo
from LIVRO
join TECNOLOGIA on TECNOLOGIA.numero_registro = LIVRO.numero_registro;
 
-- questão 6
select * from ATENDENTE;

-- questão 7
select * from PERIODICO where ano_publicacao = 2023;

-- questão 8
select LIVRO.titulo
from LIVRO
join SOCIOLOGIA on SOCIOLOGIA.numero_registro = LIVRO.titulo;

-- questão 9
select EDUCADOR.nome
from EDUCADOR








