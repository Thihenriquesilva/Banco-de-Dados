USE Gufi_Manha;

-- Listar todos os usuários cadastrados
SELECT  Nome, Email, Senha, DataCadastro, Genero, TituloTipoUsuario FROM Usuario INNER JOIN TipoUsuario ON Usuario.IdTipousuario = TipoUsuario.IdTipoUsuario;

SELECT CNPJ, NomeFantasia, Endereco FROM Instituicao;

SELECT * FROM TipoEvento;

SELECT TituloTipoEvento FROM TipoEvento;

SELECT * FROM Evento;

SELECT NomeEvento, DataEvento, Descricao, AcessoLivre, CNPJ, NomeFantasia, Endereco FROM Evento INNER JOIN Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao;

SELECT NomeEvento, TituloTipoEvento as Tema, Descricao, DataEvento, AcessoLivre, CNPJ, NomeFantasia, Endereco FROM Evento 
INNER JOIN Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao 
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento
WHERE AcessoLivre = 1;


SELECT * FROM Usuario;
SELECT * FROM Presenca;

SELECT Nome, Email, Genero, Situacao, NomeEvento as Nome_do_Evento, TituloTipoEvento as Tema, DataEvento, AcessoLivre, Descricao, CNPJ, NomeFantasia, Endereco FROM Usuario 
INNER JOIN Presenca ON Usuario.IdUsuario = Presenca.IdUsuario 
INNER JOIN Evento ON Presenca.IdEvento = Evento.IdEvento 
INNER JOIN Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao 
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento
WHERE Usuario.IdUsuario = 3;



SELECT Nome, Email, Genero, Situacao, NomeEvento as Nome_do_Evento, TituloTipoEvento as Tema, DataEvento, NomeEvento, CASE AcessoLivre WHEN 1 THEN 'Publico' WHEN '0' THEN 'Privado' ELSE 'Nenhum' END AS Acesso, Descricao, CNPJ, NomeFantasia, Endereco FROM Usuario 
INNER JOIN Presenca ON Usuario.IdUsuario = Presenca.IdUsuario 
INNER JOIN Evento ON Presenca.IdEvento = Evento.IdEvento 
INNER JOIN Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao 
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento
WHERE Usuario.IdUsuario = 2 AND Presenca.Situacao = 'Confirmada';

SELECT NomeEvento, CASE AcessoLivre WHEN 1 THEN 'Publico' WHEN '0' THEN 'Privado' ELSE 'Nenhum' END AS Acesso FROM Evento; 

SELECT REPLACE( AcessoLivre, '1','PÚBLICO') FROM Evento;




