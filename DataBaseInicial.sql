--                                      TABELA PRINCIPAL

-- Olá Professora, estamos aqui para apresentar nosso trabalho de Banco de dados.
-- Para que possa entender melhor a ideia do trabalho: começamos a fazer um trabalho para uma copetição do Senai (INOVA),
-- a ideia é basicamente um SOFTWARE que seria implantado em cameras que fiquem em salas de aula/ambientes controlados
-- e com isso analisar a Expressão facial dos alunos, saber se estão tristes, felizes, com raiva e etc. 
-- Então começamos a fazer o banco com a mesma ideia desse trabalho. 



CREATE DATABASE TrabFinalBD

USE TrabFinalBD

CREATE TABLE Escola(
IdEscola INT PRIMARY KEY IDENTITY,
Rua VARCHAR (45),
Bairro VARCHAR (45),
Numero INT,
Nome VARCHAR (45)
);

CREATE TABLE Coordenadores ( 
IdCoord INT PRIMARY KEY IDENTITY ,
Nome VARCHAR(45) ,
Turno VARCHAR (45)
);

CREATE TABLE Turma (
IdTurma INT PRIMARY KEY IDENTITY,
Ano DATE,
Capacidade INT
);

CREATE TABLE Professor(
IdProf INT PRIMARY KEY IDENTITY,
Nome VARCHAR (45),
Disciplina VARCHAR (45),
Telefone VARCHAR (12)
);

CREATE TABLE Pais(
IdPais INT PRIMARY KEY IDENTITY,
NomeUsuario VARCHAR(45),
Tel VARCHAR(45)
);

CREATE TABLE HistoricoEscolar(
IdHE INT PRIMARY KEY IDENTITY,
DisciplinaHE VARCHAR(45),
Notas INT
);

CREATE TABLE ExpreFacial(
IdExpre INT PRIMARY KEY IDENTITY,
Caracteristica VARCHAR (45)
);

CREATE TABLE Aluno(
IdAluno INT PRIMARY KEY IDENTITY,
Nome VARCHAR (45)
);

ALTER TABLE Aluno ADD CPF VARCHAR(15)

ALTER TABLE Aluno ADD DataNasci DATE

ALTER TABLE Aluno ADD TelPais VARCHAR(20)

-- Bom, criadas as tabelas, vamos ao trab. Logo acima, 
-- implementamos um alter table para inserir novas colunas na tabela Aluno


--SELECT * FROM 

INSERT INTO Aluno 
VALUES 
('Jose','11112235','2001/01/05','48795642')

INSERT INTO ExpreFacial
VALUES
('Triste')

INSERT INTO HistoricoEscolar
VALUES	
('Matematica','60')

UPDATE HistoricoEscolar

SET DisciplinaHE = 'Geografia'

WHERE IdHE = 1

