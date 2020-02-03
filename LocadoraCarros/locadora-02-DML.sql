USE Locadora;

SELECT * FROM Empresa;
SELECT * FROM Cliente;
SELECT * FROM Marca;
SELECT * FROM Veiculo;
SELECT * FROM Aluguel;
SELECT * FROM Modelo;


INSERT INTO Empresa (Nome)
VALUES ('Unidas'),
		('Localiza');

INSERT INTO Cliente(Nome, CPF)
VALUES ('Fernado','233.244.424-44'),
		('Helena','324.345.543-33');

INSERT INTO Marca(Nome)
VALUES ('Ford'),('GM'),('Fiat');


INSERT INTO Modelo(Nome, IdMarca)
VALUES ('Fiesta','1'),
		('Onix','2'),
		('Argo','3');

INSERT INTO Veiculo(IdModelo, Placa, IdEmpresa)
VALUES ('1','HEL-1805','1'),
		('2','FER-1010','1'),
		('3','POR-1978','2'),
		('1','LEM-9876','2');

INSERT INTO Aluguel(IdCliente,IdVeiculo,DataInicio,DateFim)
VALUES ('1','6','2019/01/19','2019/01/21'),
		('1','7','2019/01/20','2019/01/21'),
		('2','8','2019/01/21','2019/01/21'),
		('2','9','2019/01/22','2019/01/22');