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

-- Começa selecionando os dados da tabela turma, histórico escolar e faz uma união com a -- tabela alunos e Expressão facial