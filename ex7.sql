--Função Agregada: Encontre a média de idade dos clientes que têm pedidos com valor total superior a 300,00.

SELECT AVG(c.idade) AS media_idade FROM clientes c
WHERE c.cliente_id IN (
    SELECT cliente_id
    FROM pedidos
    GROUP BY cliente_id
    HAVING SUM(valor) > 300.00
);

--Subconsulta: Liste todos os produtos que foram pedidos mais de uma vez.

SELECT produto_id, COUNT(*) FROM pedidos
GROUP BY produto_id
HAVING COUNT(*) > 1;