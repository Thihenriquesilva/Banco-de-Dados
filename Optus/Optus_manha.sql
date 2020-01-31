CREATE DATABASE Optus_manha;

USE Optus_manha;

CREATE TABLE TiposUsuarios(
	IdTipoUsuario INT PRIMARY KEY IDENTITY,
	Nome	VARCHAR(250)
);

SELECT * FROM TiposUsuarios;

CREATE TABLE Artistas(
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(250)
);


SELECT * FROM Artistas;

CREATE TABLE Estilos(
	IdEstilo INT PRIMARY KEY IDENTITY,
	NomeEstilo VARCHAR(200) 
);

SELECT * FROM Estilos;

CREATE TABLE Usuarios(
	IdUsuario INT PRIMARY KEY IDENTITY,
	IdTipoUsuario INT FOREIGN KEY REFERENCES TiposUsuarios (IdTipoUsuario),
	Nome	VARCHAR(250)
);

SELECT * FROM Usuarios;

CREATE TABLE Albuns(
	IdAlbum INT PRIMARY KEY IDENTITY,
	IdArtista INT FOREIGN KEY REFERENCES Artistas (IdArtista),
	IdEstilo INT FOREIGN KEY REFERENCES Estilos (IdEstilo),
	Nome VARCHAR(200),
	DataLancamento DATE,
	QtdMinutos TIME,
	Visualizacao BIGINT
);

SELECT * FROM Albuns;
SELECT * FROM Usuarios;
SELECT * FROM Estilos;
SELECT * FROM TiposUsuarios;
SELECT * FROM Artistas;

INSERT INTO TiposUsuarios (Nome)
VALUES ('Administrador'),
		('Comum');

INSERT INTO Estilos (NomeEstilo)
VALUES ('Samba'),
		('Rock'),
		('Pop'),
		('Sertanejo'),
		('Jazz');

INSERT INTO Artistas (Nome)
VALUES ('Martinho da Vila'),
		('AC/DC'),
		('Rihanna'),
		('Louis Armstrong'),
		('Luan Santana');

INSERT INTO Usuarios (IdTipoUsuario, Nome)
VALUES ('2','Huguinho'),
		('2','Zezinho'),
		('2','Luisinho'),
		('1','Pato Donalds'),
		('1','Tio Patinhas');

INSERT INTO Albuns (IdArtista, IdEstilo, Nome, DataLancamento, QtdMinutos, Visualizacao)
VALUES ('5','4','Viva','2019/08/22','1:40:00','480000'),
		('2','2','Rock or Bust','2014/11/28','1:48:56','501000'),
		('4','5','Ella &  Louis  For Lovers','2005','00:48:00','300000000'),
		('3','3','ANTi','2016/01/27','1:30:45','250000000'),
		('1','1','20 anos da samba','1997/06/6','3:45:00','2000000');

--Apaga todos os dados da tabela
TRUNCATE TABLE Albuns;

SELECT * FROM Albuns;
SELECT * FROM Artistas;
SELECT * FROM Usuarios;
SELECT * FROM TiposUsuarios;

UPDATE Artistas
SET	Nome = 'Ed Sheeran'
WHERE IdArtista = 3;

UPDATE  Usuarios
SET IdTipoUsuario = 2
WHERE IdUsuario = 4;

UPDATE Albuns
SET Visualizacao = '4000000'
WHERE IdAlbum = 1;

DELETE FROM	Albuns
WHERE IdAlbum = 5;

SELECT * FROM Albuns;

-- Selecione os albuns do mesmo artista

SELECT  Nome FROM Albuns
WHERE IdAlbum = 3;

-- Selecione os albuns lancados na mesma data

UPDATE Albuns
SET DataLancamento = '2016/01/27'
WHERE IdAlbum = 3;

SELECT * FROM Albuns;

SELECT * FROM Albuns WHERE DataLancamento = '2016/01/27';


--  Selecione artistas do mesmo estilo 
SELECT * FROM Artistas;
SELECT * FROM Albuns;

SELECT * FROM Estilos;

INSERT INTO Artistas (Nome)
VALUES ('Rihanna');

INSERT INTO Albuns(IdArtista, IdEstilo, Nome, DataLancamento, QtdMinutos, Visualizacao)
VALUES ('6','2','Rock or Bust','2014/11/28','1:48:56','501000');

SELECT IdEstilo FROM Albuns  WHERE IdEstilo = 2;

-- Selecione albuns e artistas e ordenar a data de lancamento das mais recentes para o mais antigo

SELECT  Nome,IdArtista, DataLancamento FROM Albuns ORDER BY DataLancamento DESC;

--ordenacao invertida

SELECT IdAlbum, Nome, DataLancamento FROM Albuns
ORDER BY DataLancamento DESC;


SELECT IdAlbum, Nome, DataLancamento FROM Albuns
ORDER BY DataLancamento;


SELECT IdAlbum, Nome, DataLancamento FROM Albuns
ORDER BY DataLancamento ASC;


