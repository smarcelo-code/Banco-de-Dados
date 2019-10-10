IF EXISTS (SELECT 1 FROM SYSOBJECTS WHERE NAME = 'tr_BackupAlunos' And xType = 'TR')
    DROP TRIGGER tr_BackupAlunos

CREATE TRIGGER tr_BackupAlunos ON Alunos
FOR UPDATE
AS
	INSERT INTO Alunos (IdAluno, Nome,CPF,DataNasci,TelPais, dt_inclusao)
    SELECT IdAluno, Nome,CPF,DataNasci,TelPais, GETDATE() FROM deleted;

SELECT * FROM Aluno;
BEGIN TRAN; UPDATE Aluno SET Nome ='Ricardito' WHERE IdAluno = 2;

--rollback tran

COMMIT TRAN

-- Essa TR ativa quando dados são atualizados na tabela, ela pega os dados
-- pela tabela temporária “deleted”, bem como grava do acionamento.