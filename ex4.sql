-- Encontrar todos os clientes cujo nome começa com letra A

SELECT * FROM clientes WHERE nome LIKE 'A%'

-- Calcular o valor total de pedidos para cada cliente

SELECT c.cliente_id, c.nome, SUM(p.valor) AS total_valor_pedidos
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.cliente_id
GROUP BY c.cliente_id, c.nome

-- Calcular a média de idade dos clientes em cada cidade

SELECT cidade, AVG(idade) AS media_idades FROM clientes GROUP BY cidade
