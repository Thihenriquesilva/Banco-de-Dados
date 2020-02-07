USE Gufi_Manha;

SELECT * FROM TipoUsuario;
SELECT * FROM TipoEvento;
SELECT * FROM Instituicao;
SELECT * FROM Usuario;
SELECT * FROM Evento;
SELECT * FROM Presenca;

INSERT INTO TipoUsuario (TituloTipoUsuario)
VALUES ('Administrador'),('Comum');

INSERT INTO TipoEvento (TituloTipoEvento)
VALUES ('C#'),('React'),('SQL');

INSERT INTO Instituicao(CNPJ, NomeFantasia, Endereco)
VALUES ('11111111111111', 'Escola SENAI Inform�tica','Alameda Bar�o de Limeira, 538');

INSERT INTO Usuario(Nome, Email, Senha, DataCadastro, Genero, IdTipousuario)
VALUES ('Administrador','adm@adm.com','adm123','06/02/2020','N�o informado','1'),
		('Carol','carol@email.com','carol123','06/02/2020','Feminino','2'),
		('Saulo','saulo@email.com','saulo123','06/02/2020','Masculino','2');

INSERT INTO Evento(NomeEvento, DataEvento, Descricao, AcessoLivre, IdInstituicao, IdTipoEvento)
VALUES ('Orienta��o a objetos','07/02/2020','Conceitos sobre os pilares da programa��o orientada a objetos','1','1','1'),
		('Ciclo de Vida','08/02/2020','Como utilizar os ciclos de vida com a biblioteca ReactJs','0','1','2'),
		('Introdu��o a SQL','09/02/2020','Comandos b�sicos utilizando SQL Server','1','1','3');

INSERT INTO Presenca(IdUsuario, IdEvento, Situacao)
VALUES ('2','2','Confirmada'),
		('2','3','N�o confirmada'),
		('3','1','Confirmada');