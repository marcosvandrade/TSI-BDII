-- Quantos	clientes tem	cadastrado	?
SELECT COUNT(*) FROM cliente;

-- Quantos carros tem	cadastrados?
SELECT COUNT(*) FROM automovel;

-- Quantas	ocorrências	tem	cadastrado?
SELECT COUNT(*) FROM ocorrencia;

-- Quantos	clientes cadastrados	com	mais de	30	anos?
SELECT COUNT(*) FROM cliente
WHERE idade > 30;

-- Qual	a	soma	de	idade	dos	clientes cadastrados?
SELECT SUM(idade) FROM cliente;

-- Qual	numero	de	carros	cadastrados	da	fiat	e	da	ford?
-- 1. Exibir	o	nome	da	fabricante	e	o	numero	de	carros	
SELECT  fabricante,
        count(*) AS TOTAL
FROM automovel
WHERE fabricante IN ('fiat', 'Ford')
GROUP BY fabricante;

-- Qual	cliente	mais	velho?
SELECT MAX(idade) FROM cliente;

-- Qual	cliente	mais	novo	?
SELECT MIN(idade) FROM cliente;

-- Qual	carro	cadastrado	mais	antigo	de	cada	fabricante	? */
-- Exibir	o	nome	da	fabricante	e	o	numero	de	carros	
SELECT fabricante,
       MIN(anofab) AS ANO_FABRICACAO, 
       COUNT(MIN(anofab)) AS TOTAL
FROM automovel
GROUP BY fabricante;

