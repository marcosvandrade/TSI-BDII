-- 1. Exibir	o	nome	dos	clientes	cadastrados	e	o	modelo	dos	
-- carros	associados	a	cada	cliente
SELECT  c.nome,
        a.modelo
FROM cliente c, automovel a
WHERE c.codigo = a.codCliente;

--2. Exibir	o	modelo	do	carro	e	a	descrição	das	ocorrências	
--associadas	a	cada	modelo
SELECT  a.modelo,
        o.descricao
FROM automovel a, ocorrencia o
WHERE a.placa = o.autoPlaca; 

--3. Exibir	o	nome	dos	clientes	cadastrados	e	o	numero	de	carros	
--que	ele	possui
SELECT  c.nome,
        COUNT(a.placa)
        FROM cliente c, automovel a 
WHERE c.codigo = a.codCliente
GROUP BY c.nome;        

-- 4. Exibir	o	nome	dos	clientes	e	as	ocorrências	associadas	a	
--cada	cliente
SELECT  c.nome,
        o.descricao
FROM cliente c, ocorrencia o, automovel a 
WHERE c.codigo = a.codCliente
AND a.placa = o.autoPlaca;

-- 4. Exibir	o	nome	dos	clientes	e	o número de	ocorrências	associadas	a	
--cada	cliente
SELECT  c.nome,
        COUNT(o.numero)
FROM cliente c, ocorrencia o, automovel a 
WHERE c.codigo = a.codCliente
AND a.placa = o.autoPlaca
GROUP BY c.nome;

-- 5. retorna o nome do dono, o modelo do carro e o valor
SELECT  c.nome,
        a.modelo,
        v.valor
FROM cliente c, automovel a, valor_automovel v
WHERE c.codigo = a.codCliente
AND   a.placa = v.autoPlaca;