CREATE VIEW vw_SemCriatividade
AS
SELECT T.Ano, T.Capacidade 

AS IdentificaoTurma, P.NomeUsuario, P.Tel
AS IdentificaoPais

FROM Turma T
INNER JOIN Pais P
ON T.IdTurma = P.IdPais

UNION

SELECT A.Nome, A.IdAluno

AS Identificao, EF.Caracteristica, EF.IdExpre 
AS FaceAluno

FROM Aluno A
INNER JOIN ExpreFacial EF
ON A.IdAluno = EF.IdExpre

-- Seleciona os dados da Turma, tabela Pais, e adicionando uma união com a tabela aluno e -- expressão facial