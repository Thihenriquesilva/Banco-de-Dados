-- comando para criar banco de dados 
CREATE DATABASE RoteiroLivros;

-- antes de usar faça o USE
USE RoteiroLivros;

--Cria uma tabela
CREATE TABLE Genero (
	IdGenero INT PRIMARY KEY IDENTITY,
	Nome	 VARCHAR(200) NOT NULL
	);

CREATE TABLE Autores (
	IdAutor INT PRIMARY KEY IDENTITY,
	NomeAutor VARCHAR(200)
);

CREATE TABLE Livros(
	IdLivro INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR(255),
	IdGenero INT FOREIGN KEY REFERENCES Genero (IdGenero),
	IdAutor  INT FOREIGN KEY REFERENCES	Autores(IdAutor)
);

--*:TUDO
-- DQL Comando consultas

SELECT * fROM Genero;
SELECT * FROM Livros;
SELECT * FROM Autores;
