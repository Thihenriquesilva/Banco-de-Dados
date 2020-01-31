CREATE DATABASE Musicas_manha;

USE Musicas_manha;

CREATE TABLE EstilosMusicais (
	IdEstilosMusicais INT PRIMARY KEY IDENTITY,
	Nome	VARCHAR(200)
);

CREATE TABLE Artistas(
	IdArtistas INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(250),
	IdEstilosMusicais INT FOREIGN KEY REFERENCES EstilosMusicais (IdEstilosMusicais) 
);

ALTER TABLE EstilosMusicais
ADD Descricao VARCHAR(200);


-- Visualiza os dados
SELECT * FROM EstilosMusicais;
SELECT * FROM Artistas;



-- Alteraçaõ tabelas
ALTER TABLE Artistas
ADD DataNascimento  DATE;


ALTER TABLE Artistas
ALTER COLUMN Nome CHAR;


ALTER TABLE Artistas
DROP COLUMN Descricao;

ALTER TABLE Artistas
ADD NomeArtista VARCHAR(200);


DROP TABLE Artistas;


--Exclui banco de dados
DROP DATABASE Musicas_manha;

USE MASTER;

--DML LINGUAGEM DE MANIPULAÇAO DE DADOS

-- INSERCAO DE DADOS

INSERT INTO EstilosMusicais (Nome, Descricao)
VALUES ('PAGODE','Musica Brasileira');

INSERT INTO EstilosMusicais (Nome, Descricao)
VALUES ('SAMBA','Estilo Musical'),
	  ('JAZZ','	Estilo Top'),
	  ('POP','Estilo Popular');


--Add chave estrangeira
INSERT INTO	Artistas (Nome,IdEstilosMusicais)
VALUES ('Zeca Pagodinho','2'),
		('Frank','3');

-- Update: Altera dados dentro da tabela 
UPDATE Artistas
SET Nome = 'Alcione'
WHERE IdArtistas = 1;


UPDATE Artistas
SET Nome = 'Zeca Pagodinho'
WHERE IdArtistas = 1;


UPDATE Artistas
SET IdEstilosMusicais = 1
WHERE IdArtistas = 3;

--DELETE Apaga dados da tabela

DELETE FROM Artistas
WHERE IdArtistas = 1;


SELECT * FROM Artistas;	
SELECT * FROM EstilosMusicais;

