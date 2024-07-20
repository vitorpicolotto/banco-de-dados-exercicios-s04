-- Selecionar todos os clientes que moram em SP

SELECT * FROM clientes WHERE cidade = 'São Paulo'

-- Listar pedidos ordenados pela data decrescente

SELECT * FROM pedidos ORDER BY data_pedido DESC

-- Encontrar todos os clientes com idade entre 25 e 35 anos

SELECT idade FROM clientes WHERE idade between 25 AND 35