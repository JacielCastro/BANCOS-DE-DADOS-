--usando o banco de dados sistema_biblioteca 
use sistema_biblioteca;

-- quest�o 1
select * from LIVRO_BIBLIOTECA where cnpj = 12345678000123;

-- quest�o 2
select * from BIBLIOTECARIO;

-- quest�o 3 
select * from LIVRO where numero_registro = 10;

-- quest�o 4
select * from WORKSHOP 
where id_evento.custo > 150.00;

-- quest�o 5
select LIVRO.titulo
from LIVRO
join TECNOLOGIA on TECNOLOGIA.numero_registro = LIVRO.numero_registro;
 
-- quest�o 6
select * from ATENDENTE;

-- quest�o 7
select * from PERIODICO where ano_publicacao = 2023;

-- quest�o 8
select LIVRO.titulo
from LIVRO
join SOCIOLOGIA on SOCIOLOGIA.numero_registro = LIVRO.titulo;

-- quest�o 9
select EDUCADOR.nome
from EDUCADOR








