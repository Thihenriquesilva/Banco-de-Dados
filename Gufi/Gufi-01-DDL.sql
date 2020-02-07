-- Criando o Banco de Dados com o nome GUFI
CREATE DATABASE Gufi;

--Define o banco de dados que ser� utilizado
USE Gufi;

--Criando tabelas
CREATE TABLE TipoUsuario(
	IdTipoUsuario INT PRIMARY KEY IDENTITY
	,TituloTipoUsuario VARCHAR(255) NOT NULL  UNIQUE
);


--UNIQUE: faz com que o valor n�o se repita
CREATE TABLE TipoEvento(
	IdTipoEvento INT PRIMARY KEY IDENTITY
	,TituloTipoEvento VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Instituicao(
	IdInstituicao INT PRIMARY KEY IDENTITY
	,CNPJ CHAR(14) NOT NULL UNIQUE
	,NomeFantasia VARCHAR(255) NOT NULL UNIQUE
	,Endereco VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Usuario(
	IdUsuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(255) NOT NULL,
	Email VARCHAR(255) NOT NULL UNIQUE,
	Senha VARCHAR(255) NOT NULL,
	DataCadastro DATETIME2,
	Genero VARCHAR(255),
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);



