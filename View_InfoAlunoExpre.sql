CREATE VIEW vw_InfoAlunoExpre
AS
SELECT T.Ano, T.Capacidade 

AS Identificao, HE.IdHE, HE.DisciplinaHE, HE.Notas
AS Desempenho

FROM Turma T
INNER JOIN HistoricoEscolar HE
ON T.IdTurma = HE.IdHE

UNION

SELECT A.Nome, A.IdAluno, A.CPF 

AS Identificao, EF.Caracteristica, EF.IdExpre 
AS FaceAluno

FROM Aluno A
INNER JOIN ExpreFacial EF
ON A.IdAluno = EF.IdExpre

-- Come�a selecionando os dados da tabela turma, hist�rico escolar e faz uma uni�o com a -- tabela alunos e Express�o facial