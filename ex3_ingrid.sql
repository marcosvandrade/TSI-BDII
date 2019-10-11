CREATE TABLE cliente( --criando a tabela
codigo SERIAL PRIMARY KEY,
nome VARCHAR(200) NOT NULL,
idade INTEGER NOT NULL,
rg INTEGER NOT NULL,
cpf INTEGER,
Telefone VARCHAR(15),
Rua VARCHAR(30),
Numero INTEGER,
CEP INTEGER DEFAULT 79200000,
Cidade VARCHAR(20) DEFAULT 'Brasilia',
Estado VARCHAR(2) DEFAULT 'DF');

CREATE TABLE automovel(  --criando a tabela
placa VARCHAR(8) PRIMARY KEY,
renavan  INTEGER,
anofab INTEGER,
fabricante VARCHAR(10),
modelo VARCHAR(25),
codCliente INTEGER references cliente(codigo)NOT NULL
);

CREATE TABLE ocorrencia(  --criando a tabela
numero  SERIAL PRIMARY KEY,
local VARCHAR(50),
descricao VARCHAR(200),
data date,
autoPlaca VARCHAR(8) references automovel(placa) NOT NULL
);

INSERT INTO cliente(nome,idade,rg) VALUES --inserção de valores
('Bruna', 25, 20700),
('anderson', 19, 130000),
('Caio', 32, 1200),
('Andre', 30, 1036000),
('Rafael', 50, 6000000),
('Lucas', 60, 90000);

INSERT INTO automovel(placa, renavan, anofab, fabricante,--inserção de valores
modelo, codCliente					 ) VALUES
('aaa1111', 1000000, 2016, 'fiat', 'palio', 1),
('aaa222', 2000000, 2019, 'fiat', 'bravo', 1),
('aaa333', 5000000, 2013, 'Ford', 'focus', 2),
('aaa4444', 300000, 2012, 'Ford', 'ka', 3),
('aaa5555', 3000, 2018, 'fiat', 'punto', 4);

INSERT INTO ocorrencia(descricao, autoPlaca) VALUES --inserção de valores 
('colisao lateral na 410 Norte', 'aaa333'),
('pneu furado', 'aaa4444'),
('bateria arriada, 216 Norte','aaa222'),
('guincho para oficina , carro na liga','aaa333');

SELECT nome FROM cliente;--. Listar	os	nomes	dos	Clientes

SELECT nome FROM cliente order by nome;--Listar	os	nomes	dos	Clientes	em	ordem	

SELECT nome, cidade FROM cliente order by nome; --Listar	nome	e	Cidade	dos	Cliente	ordenando	por	nome

select modelo, placa FROM automovel order by modelo; --Listar	todos	os	carros	(Modelo	e	placa)	ordenando	por	
--modelo

SELECT * From ocorrencia; --Listar	todas	as	ocorrências	cadastradas

SELECT nome, rg FROM cliente where cidade='Brasilia';--Listar	nome	e	RG	dos	clientes	que	moram	Brasilia

SELECT modelo,placa FROM automovel where fabricante='fiat' order by placa; --Listar	modelo	e	placa	dos	carros	da	fabricante	fiat	
--ordenando	placa	

SELECT * FROM cliente where idade>40;--Listar	Clientes	com	mais	de	40	anos

SELECT * FROM cliente where idade<30;--Listar	Clientes	com	menos	de	30	anos	

Select nome, rg FROM cliente where cidade='Brasilia' and idade>30; --Listar	nome	e	RG	dos	clientes	que	moram	Brasilia e	tem	mais	de	
--30	anos

Select * FROM cliente where idade>=30 and idade<=40;--Listar	Clientes	com	idade	entre	30	e	40	anos

Select modelo FROM automovel where anofab>=2017 and fabricante='fiat';--. Listar	modelo	dos	carros	fabricados	a	partir	de	2017	da	marca	fiat

Select * FROM ocorrencia where descricao = 'colisao lateral na 410 Norte' and 
autoplaca = 'aaa333';--Monte	uma	consulta	para	o	banco	seguradora	usando	com	duas	
--condições		usando	a	o	operador	AND	


Select nome, idade FROM cliente where cidade = 'Brasilia' and
idade =60 or idade=19; --Listar	nome	e	idade	dos	clientes	que	moram	em	
--Brasilia e	tem	60	ou	19	anos

Select * FROM automovel where codCliente = 1 and
fabricante ='fiat' or fabricante='ford';--. Monte	uma	consulta	para	o	banco	seguradora	usando	
--a	o	operador	AND	e	o	operador	OR	


Select descricao,autoplaca from ocorrencia where descricao='colisao lateral na 410 Norte'
or descricao ='pneu furado'; --Monte	uma	consulta	para	o	banco	seguradora	usando	
--a	o	operador	OR	

CREATE TABLE cliente( --criando a tabela
codigo SERIAL PRIMARY KEY,
nome VARCHAR(200) NOT NULL,
idade INTEGER NOT NULL,
Cidade VARCHAR(20) DEFAULT 'Brasilia',
Estado VARCHAR(2) DEFAULT 'DF');

CREATE TABLE carro(  --criando a tabela
placa VARCHAR(8) PRIMARY KEY,
renavan  INTEGER,
codCliente INTEGER references cliente(codigo)NOT NULL
);

CREATE TABLE ocorrencia(  --criando a tabela
numero  SERIAL PRIMARY KEY,
local VARCHAR(50),
descricao VARCHAR(200),
data date,
autoPlaca VARCHAR(8) references carro(placa) NOT NULL
);

CREATE TABLE funcionario(  --criando a tabela
numero  SERIAL PRIMARY KEY,
nome VARCHAR(50),
CodCliente integer references cliente(codigo) NOT NULL
);

INSERT INTO cliente(nome,idade,rg) VALUES --inserção de valores
('Bruna', 25, 20700),
('anderson', 19, 130000),
('Caio', 32, 1200),
('Andre', 30, 1036000),
('Rafael', 50, 6000000),
('Lucas', 60, 90000);

INSERT INTO ocorrencia(descricao, autoPlaca) VALUES --inserção de valores 
('colisao lateral na 410 Norte', 'aaa333'),
('pneu furado', 'aaa4444'),
('bateria arriada, 216 Norte','aaa222'),
('guincho para oficina , carro na liga','aaa333'),
('guincho para oficina','aaa7733'),
( 'carro na liga','aaa88833');

 INSERT INTO carro(placa, renavan, codCliente ) VALUES
('aaa1111', 1000000,  1),
('aaa222', 2000000,  1),
('aaa333', 5000000,  2),
('aaa4444', 300000,  3),
('aaa5555', 3000,  4),
('aaa', 3000,  5);

INSERT INTO funcionario(numero,nome,codCliente) VALUES --inserção de valores
( 25,'Bruna', 1),
(19,'anderson', 2),
( 32,'Caio', 3),
( 30,'Andre', 1),
( 50,'Rafael', 2),
(60,'Lucas', 2);
 
 
 SELECT nome FROM cliente;--. Listar	os	nomes	dos	Clientes

SELECT nome FROM cliente order by nome;--Listar	os	nomes	dos	Clientes	em	ordem	

SELECT nome, cidade FROM cliente order by nome; --Listar	nome	e	Cidade	dos	Cliente	ordenando	por	nome

select  placa FROM carro order by placa ; --Listar	todos	os	carros	(Modelo	e	placa)	ordenando	por	
--modelo

SELECT * From ocorrencia; --Listar	todas	as	ocorrências	cadastradas

SELECT nome FROM cliente where cidade='Brasilia';--Listar	nome	e	RG	dos	clientes	que	moram	Brasilia

SELECT placa FROM carro where renavan=1000000 order by placa; --Listar	modelo	e	placa	dos	carros	da	fabricante	fiat	
--ordenando	placa	

SELECT * FROM cliente where idade>40;--Listar	Clientes	com	mais	de	40	anos

SELECT * FROM cliente where idade<30;--Listar	Clientes	com	menos	de	30	anos	

Select nome, rg FROM cliente where cidade='Brasilia' and idade>30; --Listar	nome	e	RG	dos	clientes	que	moram	Brasilia e	tem	mais	de	
--30	anos

Select * FROM cliente where idade>=30 and idade<=40;--Listar	Clientes	com	idade	entre	30	e	40	anos

Select placa FROM carro where codCliente=1 and renavan=1000000;--. Listar	modelo	dos	carros	fabricados	a	partir	de	2017	da	marca	fiat

Select * FROM ocorrencia where descricao = 'colisao lateral na 410 Norte' and 
autoplaca = 'aaa333';--Monte	uma	consulta	para	o	banco	seguradora	usando	com	duas	
--condições		usando	a	o	operador	AND	


Select nome, idade FROM cliente where cidade = 'Brasilia' and
idade =60 or idade=19; --Listar	nome	e	idade	dos	clientes	que	moram	em	
--Brasilia e	tem	60	ou	19	anos

Select * FROM carro where codCliente = 1 and
renavan =1000000 or codCliente=2;--. Monte	uma	consulta	para	o	banco	seguradora	usando	
--a	o	operador	AND	e	o	operador	OR	

Select * from ocorrencia;

Select descricao,autoplaca from ocorrencia where descricao='colisao lateral na 410 Norte'
or descricao ='pneu furado'; --Monte	uma	consulta	para	o	banco	seguradora	usando	
--a	o	operador	OR	

Select Distinct nome from Cliente;

Select * from carro where renavan between 1000000 and   5000000;

Select placa from carro where renavan between  3000 and 1000000;

