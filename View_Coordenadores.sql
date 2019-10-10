CREATE VIEW vw_Coordenadores
 
 AS
 
 SELECT IdCoord,Nome,Turno FROM Coordenadores WHERE IdCoord !=null

 -- Vai selecionar os dados da tabela coordenadores onde o ID for diferente de nulo
