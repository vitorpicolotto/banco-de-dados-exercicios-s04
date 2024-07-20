-- Encontre o total de itens pedidos em cada mês.

SELECT date_trunc('month', data_pedido) AS mes,
       count(*) AS total_itens_pedidos --date_trunc para 'travar' a data_pedido para o inicio do mÊs; count(*) para contar as linhas de cada mês
FROM pedidos
GROUP BY date_trunc('month', data_pedido) --agrupar o resultado por mês
ORDER BY mes; 

-- Liste os clientes que não têm pedidos associados.

SELECT c.* FROM clientes c
FULL OUTER JOIN pedidos p ON c.cliente_id = p.cliente_id
WHERE p.cliente_id IS NULL;

-- Encontre o pedido de maior valor.

SELECT * FROM pedidos WHERE valor = (SELECT max(valor) FROM pedidos)

-- Encontre o total de itens pedidos para cada produto.

SELECT produto_id, count(*) AS total_itens_pedidos FROM pedidos
GROUP BY produto_id

-- Calcule a soma dos valores dos pedidos para cada cliente que tenha feito mais de um pedido.

SELECT cliente_id, sum(valor) AS total_itens_pedidos FROM pedidos
GROUP BY cliente_id
HAVING count(*) > 1

-- Encontre o preço médio dos produtos em cada categoria.

SELECT c.categoria_id, c.nome_categoria, avg(p.preco) AS preco_medio FROM categorias c
JOIN produtos p ON c.categoria_id = p.categoria_id
GROUP BY c.categoria_id, c.nome_categoria

-- Encontre o cliente que fez o pedido de maior valor.

SELECT c.* FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id WHERE p.valor = (SELECT max(valor) FROM pedidos);
