-- Exerc�cio de cria��o de procedure em SQL.
/*
1. Criar uma procedure para enserir um registro de funcionario do tipo educador, recebendo nome e matricula como par�metros.
*/
create procedure sp_inserir_funcionario_educador
	@matricula nvarchar (6),
	@nome nvarchar(50)
as
begin
	insert into FUNCIONARIO(matricula,nome)
	values (@matricula,@nome)
end

exec sp_inserir_funcionario_educador @matricula= 'ED1020', @nome= 'Jose Carlos' 

/*
2. Criar uma procedure para listar os livros de uma categoria espec�fica, recebendo o nome da categoria como par�metro.
*/
alter procedure sp_liste_livro_tecnologia
	@titulo nvarchar (100)
as
begin
	select LIVRO.titulo 
	from LIVRO
	join SOCIOLOGIA on SOCIOLOGIA.numero_registro = LIVRO.numero_registro
	where LIVRO.titulo = @titulo ; -- adicionado filto pelo titulo 
end;
-- exercu��o do procedimento armazenado comum t�tulo espec�fico
exec sp_liste_livro_tecnologia @titulo= 'sociologia'; -- coloca em aspas simplis o titulo do livro para ser realizado a pesquisa 

--============================================================================

/*
3. Criar uma procedure para obeter os nomes dos funcionarios de um determinado cargo, recebendo o cargo como par�metro.
*/
create procedure sp_ober_nomes_gerente
	@nome nvarchar(6)-- enserindo o tributo nome como par�metro 
as
begin
	select FUNCIONARIO.nome
	from FUNCIONARIO
	join GERENTE on FUNCIONARIO.matricula = GERENTE.matricula
	where FUNCIONARIO.nome = @nome;-- adicionando um filtro pelo nome 
end;

exec sp_ober_nomes_gerente @nome = 'gerente'; -- 

--================================================================================

/*
4. Criar uma procedure para exibir os t�tulos dos livros publicados antes de um ano
espec�fico, recebendo o ano como par�metro. 
*/
alter procedure sp_exibir_titulos_livros -- criando um procedure para exibir os totulos dos livros.
	@ano nvarchar(30)
as
begin
	select titulo,ano_publicacao
	from LIVRO
	where ano_publicacao < @ano
end;

exec sp_exibir_titulos_livros @ano = '2000';

--===================================================================================

/*
5. Criar uma procedure para contar o n�mero total de livros em uma biblioteca
espec�fica, recebendo o CNPJ da biblioteca como par�metro.
*/
create procedure sp_contar_total_livros
	@cnpj nvarchar(14)
as
begin
	select cnpj,COUNT(numero_registro) as total_livros -- selecionando as colunas e fazendo os comando de contagem e como (count,as).
	from LIVRO_BIBLIOTECA-- selecionando a tabela 
	group by cnpj -- agrupando as contagem pela chave estrangera cnpj
end;

exec sp_contar_total_livros @cnpj = '1234567800123';


