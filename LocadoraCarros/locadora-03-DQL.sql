USE Locadora;

SELECT Cliente.Nome, CPF, Modelo.Nome, Marca.Nome, Placa, DataInicio, DateFim 
FROM Cliente INNER JOIN Aluguel ON Cliente.IdCliente = Aluguel.IdAluguel 
INNER JOIN Veiculo ON Aluguel.IdVeiculo = Veiculo.IdVeiculo
INNER JOIN Modelo ON Veiculo.IdModelo = Modelo.IdModelo 
INNER JOIN Marca ON Modelo.IdMarca = Marca.IdMarca

SELECT 


SELECT Cliente.Nome, Empresa.Nome, CPF, Modelo.Nome, Placa, DataInicio, DateFim
FROM Aluguel INNER JOIN Cliente ON Aluguel.IdCliente = Cliente.IdCliente
INNER JOIN Veiculo ON Veiculo.IdVeiculo = Aluguel.IdVeiculo
INNER JOIN Empresa ON Empresa.IdEmpresa = Veiculo.IdEmpresa
INNER JOIN Modelo ON Modelo.IdModelo = Veiculo.IdModelo;


