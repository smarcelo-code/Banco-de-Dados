CREATE PROCEDURE InsereExpressao
(
@Caracteristica VARCHAR (45)
)
as
BEGIN	
INSERT INTO ExpreFacial VALUES (@Caracteristica)
END

EXEC InsereExpressao 'Feliz'

-- Inserção de dados na tabela ExpreFacial