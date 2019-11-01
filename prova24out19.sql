CREATE TABLE ossos_do_esqueleto (
    cod INT PRIMARY KEY,
    segmento VARCHAR(30),
    regiao VARCHAR(10),
    nome_osso VARCHAR(30),
    quantidade INT
);

INSERT INTO ossos_do_esqueleto VALUES
(1, 'memb.Sup', 'Braço', 'Umero', 2),
(2, 'meb.Sup', 'Mão', 'falanges médias', 8),
(3, 'memb.Inf', 'Perna', 'Tíbia', 2);

-- qual o comando pode ser utilizado para listar o nome e a região dos ossos com nome terminado com a letra 'a'
SELECT nome_osso, regiao FROM ossos_do_esqueleto WHERE nome_osso LIKE 'a%'; 

-- qual comando pode ser utilizado para listar as diferentes regiões cadastradas no banco e o número de ossos associados a cada região
SELECT regiao, quantidade FROM ossos_do_esqueleto GROUP BY regiao, quantidade;

-- qual comando pode ser utilizado para listar a quantidade de ossos por região
SELECT SUM(quantidade) FROM ossos_do_esqueleto GROUP BY regiao;

-- qual comando pode ser utilizado para listar o número de regiões por segmento
SELECT COUNT(regiao) FROM ossos_do_esqueleto GROUP BY segmento;

-- qual comando pode ser utilizado para listar as regiões com mais de 10 ossos
SELECT SUM(quantidade) FROM ossos_do_esqueleto GROUP BY regiao HAVING SUM(quantidade) > 10;

-- questão 6

CREATE TABLE vendas(
    venda_id INT PRIMARY KEY,
    produto_id INT,
    quantidade INT,
    valor_unitario FLOAT
);

INSERT INTO vendas VALUES
(1, 3, 2, 10.00),
(2, 3, 5, 10.00),
(3, 1, 3, 15.00),
(4, 2, 2, 30.00),
(5, 3, 10, 10.00);

SELECT SUM(quantidade * valor_unitario) AS "VALOR TOTAL DAS VENDAS" FROM vendas
WHERE produto_id = 3;












