IF EXISTS (SELECT 1 FROM SYSOBJECTS WHERE NAME = 'trDesempUpdate' And xType = 'TR')
    DROP TRIGGER trDesempUpdate

GO

CREATE TRIGGER trDesempUpdate 
ON dbo.HistoricoEscolar AFTER UPDATE AS
    BEGIN 

INSERT INTO HistoricoEscolar(DisciplinaHE, Notas)
SELECT DisciplinaHE,
Notas

FROM inserted

END

GO

-- Trigger esperando update na tabela Historico Escolar. Quando registrado o update, ela vai 
-- retornar as Disciplinas da tabela Historico Escolar e as notas.