-- Listar todos os pedidos com as informações dos clientes com inner join

SELECT pedidos.*, clientes.* FROM pedidos
INNER JOIN clientes ON pedidos.cliente_id = clientes.cliente.id

-- Faça uma consulta que retorna todos os clientes e seus pedidos, incluindo clientes que não fizeram pedidos (use LEFT JOIN).

SELECT clientes.*, pedidos.* FROM clientes
LEFT JOIN pedidos ON clientes.cliente.id = pedidos.cliente_id

-- Faça uma consulta que retorna todos os produtos e seus itens pedidos, incluindo produtos que não foram pedidos (use RIGHT JOIN).

SELECT produtos.*, itens_pedidos.* from produtos
RIGHT JOIN itens_pedidos ON produtos.id = itens_pedidos.produto_id

--Utilize UNION para combinar duas consultas: uma que retorna clientes de 'São Paulo' e outra que retorna clientes de 'Rio de Janeiro'.

SELECT * FROM clientes WHERE cidade = 'São Paulo'
UNION
SELECT * FROM clientes WHERE cidade = 'Rio de Janeiro'
