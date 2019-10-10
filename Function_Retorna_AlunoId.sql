IF EXISTS (SELECT * FROM SYSOBJECTS WHERE name = 'RetornaAlunoId' AND xtype = 'FN')
    DROP FUNCTION RetornaAlunoId

GO

CREATE FUNCTION RetornaAlunoId
(
@Id int
)
RETURNS TABLE
AS
RETURN
 
SELECT * FROM Aluno WHERE IdAluno = @Id

-- Acima foi criada uma function que retorna somente o Id do Aluno