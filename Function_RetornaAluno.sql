IF EXISTS (SELECT 1 FROM SYSOBJECTS where NAME = 'DadosAlunoRetornado'
    AND xtype = 'FN')
        DROP FUNCTION DadosAlunoRetornado;

GO

CREATE FUNCTION DadosAlunoRetornado
(
@IdAluno INT
)

RETURNS VARCHAR (75)

BEGIN 

DECLARE @Dados VARCHAR(75)

SELECT @Dados = ISNULL (Nome,'') + ' ' + ISNULL(TelPais,'')

FROM Aluno WHERE IdAluno = @IdAluno

RETURN @Dados

END

-- @dados chama Nome e Telefone dos pais da tabela Aluno