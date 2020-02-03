USE Locadora;

SELECT Cliente.Nome, Modelo.Nome, Marca.Nome, Placa, CPF, DataInicio, DateFim 
FROM Cliente INNER JOIN Aluguel ON Cliente.IdCliente = Aluguel.IdAluguel 
INNER JOIN Veiculo ON Aluguel.IdVeiculo = Veiculo.IdVeiculo
INNER JOIN Modelo ON Veiculo.IdModelo = Modelo.IdModelo 
INNER JOIN Marca ON Modelo.IdMarca = Marca.IdMarca
WHERE Aluguel.IdAluguel=3;


