/*       Exercicio 01/04/2024 
1. Retornar todos os livros de sociologia
*/
-- Tudo Certo !!!
select * from livro
join SOCIOLOGIA on SOCIOLOGIA.numero_registro = LIVRO.numero_registro;

/*
2. Listar os nomes dos funcion�rios que s�o bibliotec�rios.
*/
-- Tudo Certo !!!
select nome from FUNCIONARIO;

/*
3. Exibir os t�tulos dos livros publicados antes de 2000.
*/
select titulo, ano_publicacao from livro
where ano_publicodo < '2000';

-- Tudo Certo !!! 
select titulo from LIVRO
where ano_publicacao < 2000;
/*
4. Mostrar o n�mero total de livros em cada biblioteca.
*/
select cnpj, COUNT(*) as total_livro
from LIVRO_BIBLIOTECA
group by cnpj;

/*
5. Listar os eventos do tipo 'Workshop' que ocorreram ap�s 2020.
*/
-- Tudo certo !!! 
select * from EVENTO
where YEAR (data) > 2020
and tipo = 'workshop';
/*
6. Exibir os nomes dos usu�rios que fizeram empr�stimos de livros em janeiro de 2023.
*/
-- vai ser preciso criar unas novas tabela como endere�o, usuario e emprestimo 
/*
7. Retornar os t�tulos dos livros de tecnologia que t�m 'Python' no t�tulo.
*/
-- Tudo Certo !!!
SELECT titulo
FROM LIVRO
join TECNOLOGIA on TECNOLOGIA.numero_registro = livro.numero_registro
AND titulo LIKE '%Python%';
/*
8. Listar os t�tulos dos peri�dicos dispon�veis na biblioteca com CNPJ 
'12345678000123'.
*/
select * from biblioteca
where cnpj = '12345678000123'
and PERIODICO_BIBLIOTECA  like 'titulo';
/*
9. Mostrar os nomes dos funcion�rios que n�o s�o t�cnicos de TI.
*/
-- Certa 
select * from FUNCIONARIO 
where matricula not like 't%'; 

/*
10.Exibir o t�tulo e o autor dos livros emprestados pelo usu�rio com ID 'U0001'
*/

/*
11.Listar todas as palestras que custaram mais de R$ 100,00.
*/

/*
12.Retornar os t�tulos dos livros de ci�ncia que foram publicados ap�s 2010.
*/

/*
13.Exibir os nomes dos atendentes que t�m 'Maria' no nome.
*/
/*
14.Mostrar os t�tulos dos livros que foram emprestados mais de 5 vezes.
*/
/*
15.Listar os nomes dos usu�rios que emprestaram livros de tecnologia.
*/
/*
16.Exibir os eventos que ocorreram na biblioteca '67890123000178' em 2022.
*/
/*
17.Retornar os t�tulos dos peri�dicos que t�m 'Sa�de' no t�tulo.
*/
-- Certo
SELECT PERIODICO.titulo
FROM PERIODICO
WHERE PERIODICO.titulo LIKE '%sa�de%';

/*
18.Listar os nomes dos estagi�rios que come�am com a letra 'L'.
*/
-- Certo
select ESTAGIARIO.nome
from ESTAGIARIO
where ESTAGIARIO.nome like 'l%';

/*
19.Mostrar os t�tulos dos livros de sociologia que foram publicados nos anos 90.
*/
-- Certo 
select titulo, ano_publicacao
from LIVRO
join SOCIOLOGIA on SOCIOLOGIA.numero_registro = LIVRO.numero_registro
where ano_publicacao >= 1990 and ano_publicacao < 2000;

/*
20.Exibir os t�tulos dos livros e os nomes dos autores dos livros emprestados em 
fevereiro de 2023.
*/

/*
21. todos os livros que n�o s�o de tecnologia 
*/
-- Certa 
select * from LIVRO
where numero_registro 
not in (select numero_registro from TECNOLOGIA);

/*
22. Calcule a media de pre�o dos eventos do tipo worshop.
*/
-- Certo esta faltando
create view media_preco_workshop
as 
select ROUND(avg(custo),2) as media_preco
from EVENTO
join 

/*
23. soma de todos os eventos que ocorreram a partir de 2022.
*/
-- Certo 
select round (sum(custo),2) as soma_preco
from EVENTO
where YEAR (data) >= 2022;
