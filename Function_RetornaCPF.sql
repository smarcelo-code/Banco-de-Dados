IF EXISTS (SELECT * FROM SYSOBJECTS WHERE name = 'RetornaCPF' AND xtype = 'FN')
	DROP FUNCTION RetornaCPF

GO

CREATE FUNCTION RetornaCPF
(
@CPF VARCHAR(15)
)
RETURNS TABLE
AS
RETURN
 
SELECT * FROM Aluno WHERE CPF = @CPF


-- Function para retornar a variável CPF da tabela Aluno, variáveis locais declaradas