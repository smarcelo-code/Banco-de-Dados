CREATE VIEW vw_Ano_Capacidade
AS
SELECT T.Ano, T.Capacidade 

AS InfoTurma, P.NomeUsuario, P.Tel
AS InfoPais

FROM Turma T
INNER JOIN Pais P
ON T.IdTurma = P.IdPais

UNION

SELECT A.Nome, A.CPF

AS InfoAluno, HE.IdHE, HE.DisciplinaHE
AS Desempenho

FROM Aluno A
INNER JOIN HistoricoEscolar HE
ON A.IdAluno = HE.IdHE

-- Vai selecionar os dados da tabela Turma, Tabela Pais, e unir com os dados fornecidos 
-- nas tabelas Aluno e Historico Escolar
