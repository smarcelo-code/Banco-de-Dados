IF EXISTS (SELECT 1 FROM SYSOBJECTS WHERE NAME = 'RetornarNomeCPF'

    AND xtype = 'FN')
        DROP FUNCTION RetornarNomeCPF;

GO

CREATE FUNCTION RetornarNomeCPF
(
@CPF VARCHAR(20)
)
RETURNS VARCHAR(100)
AS
BEGIN 
DECLARE @NomeCPF VARCHAR(20)
SET @NomeCPF = (SELECT ISNULL (Nome, '')  FROM Cliente WHERE CPF = @CPF)
RETURN @NomeCPF;
END;

SELECT dbo.RetornaNomeCPF(84394841);

SELECT * FROM dbo.RetornaClienteId(1)

-- Essa função serve para retornar o nome do pesquisado de acordo com o CPF digitado