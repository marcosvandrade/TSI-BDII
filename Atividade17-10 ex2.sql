-- criando o banco de dados
CREATE DATABASE generos_alimenticios;

-- criando a tabela com 10 atributos
CREATE TABLE alimentos(
    id INT PRIMARY KEY,
    empresa VARCHAR(50),
    categoria VARCHAR(10),
    nome VARCHAR(20),
    carboidrato FLOAT, -- %
    proteina FLOAT, -- %
    gordura FLOAT,  -- %
    quant INT,
    un VARCHAR(3),
    valor_un FLOAT
);

-- inserindo 21 registros na tabela alimentos
INSERT INTO alimentos VALUES
(1, 'Adna Distribuicao de Generos Alimenticios', 'carnes', 'carne bovina', 0, 32.5, 66.4, 110, 'Kg', 12.79),
(2, 'Adna Distribuicao de Generos Alimenticios', 'laticinios', 'leite em po integral', 30.8, 21.5, 48.5, 200, 'Un', 6.74),
(3, 'Adna Distribuicao de Generos Alimenticios', 'frios', 'queijo mussarela', 0, 34.5, 77.5, 95, 'Kg', 12.58),
(4, 'Adna Distribuicao de Generos Alimenticios', 'graos', 'feijao preto', 63.8, 30, 5.6, 228, 'Kg', 2.78),
(5, '3W Comercio Representacao Generos Alimenticios', 'legumes', 'abobora', 0, 0, 0, 55, 'Kg', 1.46),
(6, '3W Comercio Representacao Generos Alimenticios', 'frutas', 'banana', 102.7, 4.9, 3.3, 87, 'Kg', 2.60),
(7, '3W Comercio Representacao Generos Alimenticios', 'frutas', 'laranja', 93, 9.3, 0, 103, 'Kg', 0.89),
(8, '3W Comercio Representacao Generos Alimenticios', 'conserva', 'azeitona', 2.2, 4.4, 94, 377, 'Un', 5.82),
(9, 'Frutos da Terra Natureza e Cia Alimentos', 'graos', 'arroz', 88.2, 7.7, 0, 100, 'Kg', 1.68),
(10, 'Frutos da Terra Natureza e Cia Alimentos', 'naturais', 'carne de soja', 44.3, 75.7, 3.2, 30, 'Kg', 3.98),
(11, 'Frutos da Terra Natureza e Cia Alimentos', 'hortalicas', 'alface lisa', 0, 0, 0, 100, 'Un', 3.06),
(12, 'Frutos da Terra Natureza e Cia Alimentos', 'hortalicas', 'brocolis', 71.4, 42.9, 0, 55, 'Kg', 3.98),
(13, 'Jewel Comercio de Generos Alimenticios', 'industrial', 'tapioca', 97.6, 2.4, 0, 88, 'Un', 2.10),
(14, 'Jewel Comercio de Generos Alimenticios', 'industrial', 'polvilho doce', 97.7, 1.1, 0, 62, 'Un', 2.03),
(15, 'Jewel Comercio de Generos Alimenticios', 'industrial', 'tapioca', 97.6, 2.4, 0, 88, 'Un', 2.10),
(16, 'Jewel Comercio de Generos Alimenticios', 'biscoitos', 'biscoito agua', 59.6, 8, 32, 96, 'Un', 1.10),
(17, 'Kukamar Comercio de Generos Alimenticios', 'paes', 'pao de forma', 78, 11.4, 11, 44, 'Un', 2.19),
(18, 'Kukamar Comercio de Generos Alimenticios', 'dieteticos', 'adocante dietetico', 1200, 0, 0, 104, 'Un', 2.13),
(19, 'Kukamar Comercio de Generos Alimenticios', 'naturais', 'cha preto', 0, 0, 0, 500, 'Un', 1.31),
(20, 'Kukamar Comercio de Generos Alimenticios', 'naturais', 'agua mineral', 0, 0, 0, 405, 'Un', 1.07),
(21, 'Kukamar Comercio de Generos Alimenticios', 'laticinios', 'leite condensado', 67.7, 8.6, 22.2, 999, 'Un', 2.34);

-- remova uma entrada da tabela
DELETE FROM alimentos WHERE id = 15; 

-- atualize os dados de uma tupla da tabela
UPDATE alimentos
SET nome = 'leite moca'
WHERE id = 21; 

-- exemplos de ORDER BY
-- ordena pelos produtos com preco unitario do maior para o menor
SELECT * FROM alimentos ORDER BY valor_un DESC;

-- ordena as empresas por ordem alfabetica
SELECT empresa FROM alimentos ORDER BY alimentos;

-- operador AND e OR
-- retorna os produtos da categoria naturais abaixo de 2 reais
SELECT * FROM alimentos WHERE categoria = 'naturais' AND valor_un < 2;
-- retorna os produtos da empresa kukamar e os produtos da categoria industrial
SELECT * FROM alimentos WHERE empresa = 'Kukamar Comercio de Generos Alimenticios' OR categoria = 'industrial';

-- DISTINCT
-- retorna as empresas existentes
SELECT DISTINCT empresa FROM alimentos;
-- retorna as categorias
SELECT DISTINCT categoria FROM alimentos;

-- OPERADORES ARITIMETICOS
-- dobra a quantidade de todos os produtos
UPDATE alimentos SET quant = quant * 2;
-- aplica um desconto de 10%
UPDATE alimentos SET valor_un = valor_un - (valor_un * 0.1);

-- BETWEEN
-- retorna os alimentos com valores entre 1 real e 1,50.
SELECT * FROM alimentos WHERE valor_un BETWEEN 1 AND 1.50;
-- retorna os produtos de quantidade entre 1 e 100
SELECT * FROM alimentos WHERE quant BETWEEN 1 AND 100;

-- LIKE
-- retorna os alimentos iniciados pela letra a
SELECT * FROM alimentos WHERE nome LIKE 'a%';
-- retorna a categoria que começa pela letra l e possui 7 caracteres
SELECT * FROM alimentos WHERE categoria LIKE 'l______';

-- IN
-- retorna os 5 primeiros registros da tabela alimentos
SELECT * FROM alimentos WHERE id IN (1,2,3,4,5);
-- retorna os produtos com taxa de carboidrado de 0 e 97.6
SELECT * FROM alimentos WHERE carboidrato IN (0,97.6);

-- NOT IN
-- retorna os produtos onde os ids são diferentes de 18, 19 e 20
SELECT * FROM alimentos WHERE id NOT IN (18,19,20);
-- exclui da consulta os produtos de quantidade de 1998 e 1000, respectivamente
SELECT * FROM alimentos WHERE quant NOT IN (1998,1000);

-- COUNT
-- retorna a quantidade de produtos cadastrados
SELECT COUNT(*) FROM alimentos;
-- retorna a quantidade de alimentos naturais
SELECT COUNT(*) FROM alimentos WHERE categoria = 'naturais';

-- SUM
-- retorna a soma dos valores unitarios
SELECT   SUM(valor_un) AS SOMA
FROM alimentos;

-- retorna a quantidade total de produtos
SELECT SUM(quant) AS QUANT_PRODUTOS
FROM alimentos;

-- MAX
-- retorna o valor do produto mais caro
SELECT   MAX(valor_un) AS PRODUTO_MAIS_CARO
FROM alimentos;
-- retorna a maior quantidade
SELECT   MAX(quant) AS MAIOR_QUANTIDADE
FROM alimentos;

-- MIN
-- retorna o valor do produto mais barato
SELECT   MIN(valor_un) AS PRODUTO_MAIS_CARO
FROM alimentos;
-- retorna a menor quantidade
SELECT   MIN(quant) AS MAIOR_QUANTIDADE
FROM alimentos;

-- AVG
-- retorna o valor do medio dos produtos
SELECT   AVG(valor_un) AS VALOR_MEDIO
FROM alimentos;
-- retorna a média das quantidades
SELECT   AVG(quant) AS QUANTIDADE_MEDIA
FROM alimentos;

-- GROUP BY
-- retorna a quantidade total por categoria
SELECT  categoria,
		SUM(quant)
FROM alimentos
GROUP BY categoria;

-- retorna o produto mais caro de cada categoria
SELECT  categoria,
        MAX(valor_un) AS PRODUTO_MAIS_CARO
FROM alimentos
GROUP BY categoria;

-- HAVING
-- retorna a quantidade total por categoria, onde a
-- quantidade total por categoria seja maior que 1000
SELECT  categoria,
		SUM(quant)
FROM alimentos
GROUP BY categoria
HAVING SUM(quant) > 1000;

-- retorna o produto mais caro de cada categoria, que estejam
-- acima de 10 reais
SELECT  categoria,
        MAX(valor_un) AS PRODUTO_MAIS_CARO
FROM alimentos
GROUP BY categoria
HAVING MAX(valor_un) > 10;
















































