-- Total gasto por cliente 
SELECT 
    c.nome,
    SUM(v.valor) AS total_gasto
FROM vendas v
INNER JOIN clientes c 
    ON v.id_cliente = c.id_cliente
GROUP BY c.nome
ORDER BY total_gasto DESC;


-- Vendas por cidade
SELECT 
    c.cidade,
    SUM(v.valor) AS total_vendas
FROM vendas v
INNER JOIN clientes c 
    ON v.id_cliente = c.id_cliente
GROUP BY c.cidade
ORDER BY total_vendas DESC;


-- Quantidade de compras por cliente
SELECT 
    c.nome,
    COUNT(v.id_venda) AS quantidade_compras
FROM vendas v
INNER JOIN clientes c 
    ON v.id_cliente = c.id_cliente
GROUP BY c.nome
ORDER BY quantidade_compras DESC;


-- Vendas por dia da semana 
SELECT 
    DAYNAME(v.data_venda) AS dia_semana,
    SUM(v.valor) AS total_vendas
FROM vendas v
GROUP BY dia_semana;
