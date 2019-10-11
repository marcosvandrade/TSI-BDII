-- Listar	o	nome	dos	clientes	começados	pela	letra	’B’
SELECT nome FROM cliente WHERE nome LIKE 'B%';

-- Listar	o	nome	dos	clientes	que	contem	a	letra	’E’	em seus nomes
SELECT nome FROM cliente WHERE nome LIKE '%E%';

-- Listar as descrições de ocorrencias com	a	palavra ‘bateria’
SELECT descricao FROM ocorrencia WHERE descricao LIKE '%bateria%';

--Listar os clientes que possuem nomes com	cinco letras
SELECT nome FROM cliente WHERE nome LIKE '_____';

-- Listar os carros com	nome do	fabricante formado por quatro letras e terminado em ’t’
SELECT fabricante FROM automovel WHERE fabricante LIKE '___t'; 

-- Listar	os	clientes	cuja	idade	seja	25,	30	e	60	anos	ordenando	
-- por	nome
SELECT nome

FROM clientes

WHERE idade IN (25,30,60)

ORDER BY 1

-- Listar	os	carros	fabricados	nos	anos	2013	e	2019
SELECT fabricante,
       placa,
       anofab

WHERE  anofab IN (2013,2019);

/* Listar	o	modelo,	ano	e fabricante dos	carros	fabricados	nos	
anos	2013,	2019	e	2018	da	fabricante	fiat	ordenados	por	
modelo */
SELECT modelo,
       anofab,
       fabricante

WHERE  anofab IN (2013, 2018, 2019)

ORDER BY 1;

/* Descreva	uma	tabela	e	elabore	uma	consulta	usando	os	
operadores	IN e LIKE */

SELECT nome

FROM cliente

WHERE idade IN (25,30)
AND nome LIKE '%a%';
