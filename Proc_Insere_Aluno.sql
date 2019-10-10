CREATE PROCEDURE InsereAluno
(
@Nome VARCHAR (45),
@CPF VARCHAR(15),
@DataNasci DATE,
@TelPais VARCHAR(20)
)
as
BEGIN	
INSERT INTO Aluno VALUES (@Nome,@CPF,@DataNasci,@TelPais)
END

EXEC InsereAluno 'Joao','15478968','2005/07/01','34658781'

-- Procs, criada a proc para inserção de dados na tabela Aluno, porque ninguém merece 
-- inserir tudo manualmente KKKKK
