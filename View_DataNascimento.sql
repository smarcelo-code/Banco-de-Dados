CREATE VIEW vw_DataNascimento
 
 AS
 
 SELECT IdAluno, Nome, TelPais FROM Aluno WHERE DataNasci > '2000-01-01'

 -- Seleciona os dados da tabela aluno para aqueles que nasceram ap�s a data especificada