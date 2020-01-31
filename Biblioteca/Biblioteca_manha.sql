CREATE DATABASE	Biblioteca_manha;

USE Biblioteca_manha;

CREATE TABLE Generos (
	IdGenero INT PRIMARY KEY IDENTITY,
	Nome	VARCHAR(200)
);

SELECT * FROM Generos;

CREATE TABLE Autores (
	IdAutor INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(250)
);

SELECT * FROM Autores;

CREATE TABLE Livros (
	IdLivro INT PRIMARY KEY IDENTITY,
	IdGenero INT FOREIGN KEY REFERENCES Generos (IdGenero),
	IdAutor INT FOREIGN KEY REFERENCES Autores (IdAutor),
	Titulo VARCHAR(250)
);

SELECT * FROM Livros;

INSERT INTO Generos (Nome)
VALUES ('Auto Ajuda'),
	  ('Terror'),
	  ('Ficcao'),
	  ('Fantasia'),
	  ('Infanto-Juvenil');

SELECT * FROM Generos;

INSERT INTO Autores (Nome)
VALUES ('Marion Zimmer Bradley'),
		('Mark Manson'),
		('Mary Shelley'),
		('Cressida Cowell'),
		(' H. P. Lovecraft');

SELECT * FROM Autores;
SELECT * FROM Generos;
SELECT * FROM Livros;



INSERT INTO Livros (Titulo,IdAutor, IdGenero)
VALUES ('Frankenstein','3','3'),
		('As brumas de Avalon','1','4'),
		('A sutil arte de ligar o foda-se','2','1'),
		('Como treinar seu dragão','4','5'),
		('O Horror de Dunwich','5','2');


UPDATE Generos
SET Nome = 'Romance'
WHERE IdGenero = 3;


UPDATE Generos
SET Nome = 'Romance'
WHERE IdGenero = 3;

SELECT * FROM Livros;
SELECT * FROM Autores;

DELETE FROM Livros
WHERE IdAutor = 4;	

SELECT * FROM Livros;
SELECT * FROM Autores;

DELETE FROM Autores
WHERE IdAutor=4;


INSERT INTO Livros (Titulo,IdGenero)
VALUES ('Como treinar seu dragão','5');