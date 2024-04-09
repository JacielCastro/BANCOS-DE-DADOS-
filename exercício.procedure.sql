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
create procedure sp_liste_livro_tecnologia
	@titulo nvarchar (100)
as
begin
	select titulo 
	from LIVRO
	join TECNOLOGIA
	on TECNOLOGIA.numero_registro = LIVRO.numero_registro
end;

exec sp_liste_livro_tecnologia;
/*
3. Criar uma procedure para ober os nomes dos funcionarios de um determinado cargo, recebendo o cargo como par�metro.
*/

/*
4. Criar uma procedure para exibir os nomes 
*/

