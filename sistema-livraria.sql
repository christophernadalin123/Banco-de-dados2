-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ID INTEGER PRIMARY KEY,
    nomeCliente VARCHAR(100) NOT NULL,
    emailCliente VARCHAR(100) UNIQUE
);

-- Criação da tabela Compras
CREATE TABLE Compras (
    CompraID INTEGER PRIMARY KEY,
    ClienteID INTEGER NOT NULL,
    NomeLivro VARCHAR(150) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

===================================================================
-- Inserindo dados na tabela Clientes
INSERT INTO Clientes (nomeCliente, emailCliente)
VALUES 
('Ana Silva', 'ana.silva@email.com'),
('Bruno Costa', 'bruno.costa@email.com'),
('Carla Souza', 'carla.souza@email.com');

-- Inserindo dados na tabela Compras
INSERT INTO Compras (ClienteID, NomeLivro)
VALUES
(1, 'Dom Casmurro'),
(2, 'O Senhor dos Anéis'),
(3, '1984'),
(1, 'A Hora da Estrela');

SELECT * FROM Clientes; 
SELECT * FROM Compras; 

=======================================================================

SELECT 
    Clientes.nomeCliente AS NomeCliente,
    Compras.NomeLivro AS NomeLivro
FROM Compras
INNER JOIN Clientes
    ON Compras.ClienteID = Clientes.ID;

