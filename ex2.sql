-- Inserir novo cliente

INSERT INTO clientes (nome, cidade, idade)
VALUES ('Lucas Lima', 'Salvador', 29)

-- Atualizar o campo cidade do cliente com cliente_id = 3

UPDATE clientes
SET clidade = 'Fortaleza' WHERE cliente_id = 3

-- Deletar todos os pedidos com valor inferior a 150

DELETE FROM pedidos WHERE valor < 150.00