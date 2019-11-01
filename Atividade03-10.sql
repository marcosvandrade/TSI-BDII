CREATE TABLE cliente (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    idade INTEGER NOT NULL,
    rg INTEGER NOT NULL,
    cpf INTEGER,
    Telefone VARCHAR(15),
    Rua VARCHAR(30),
    Numero INTEGER,
    CEP INTEGER  DEFAULT 79200000,
    Cidade VARCHAR(20) DEFAULT 'Brasilia',
    Estado VARCHAR(2) DEFAULT 'DF'
);

CREATE TABLE automovel(
    placa VARCHAR(8) PRIMARY KEY, 
    renavan INTEGER, 
    anofab INTEGER,
    fabricante VARCHAR(10), 
    modelo VARCHAR(25), 
    codCliente integer references cliente(codigo) NOT NULL
);

CREATE TABLE valor_automovel(
    id_placa VARCHAR(8) PRIMARY KEY,
    valor FLOAT,
    idPlaca VARCHAR(8) references automovel(placa) NOT NULL 
);

CREATE TABLE ocorrencia (
    numero SERIAL PRIMARY KEY,
    local VARCHAR(50),
    descricao VARCHAR(200), 
    data date,
    autoPlaca VARCHAR(8) references automovel(placa) NOT NULL
);

INSERT INTO cliente(nome, idade, rg) VALUES
('Bruna', 25, 20700),
('anderson', 19, 130000),
('Caio', 32, 1200),
('Andre', 30, 1036000),
('Rafael', 50, 6000000),
('Lucas', 60, 90000);

INSERT INTO automovel(placa, renavan, anofab, fabricante, modelo, codCliente) VALUES
('aaa1111', 1000000, 2016, 'fiat', 'palio',1),
('aaa2222', 2000000, 2019,'fiat', 'bravo', 1),
('aaa3333', 5000000, 2013,'Ford', 'focus', 2),
('aaa4444', 300000,  2012,'Ford', 'ka',3),
('aaa5555', 3000,    2018,'fiat', 'punto',4);

INSERT INTO valor_automovel VALUES
('aaa1111', 32000.00),
('aaa2222', 40000.00),
('aaa3333', 53000.00),
('aaa4444', 22000.00),
('aaa5555', 65000.00);

INSERT INTO ocorrencia (descricao, autoPlaca) VALUES
('colisao lateral na 410 Norte', 'aaa3333'),
('pneu furado', 'aaa4444'),
('bateria arriada, 216 norte', 'aaa2222'),
('guincho para oficina, carro na liga', 'aaa3333');

-- listar os nomes dos clientes
SELECT nome FROM cliente 

-- listar os nomes dos clientes em ordem 
SELECT nome FROM cliente ORDER BY 1

-- listar nome e cidade dos clientes ordenados por nome
SELECT  nome,
        cidade

FROM cliente ORDER BY 1 

-- listar todos os carros (modelo e placa) ordenando por modelo
SELECT  modelo,
        placa

FROM automovel ORDER BY 1

-- todos as ocorrencias cadastradas
SELECT * FROM ocorrencia

-- listar nome e RG dos clientes que moram Brasilia
SELECT  nome,
        rg

FROM cliente WHERE cidade ='Brasilia'

-- listar modelos e placa dos carros da fabricante fiat ordenando placa
SELECT  modelo,
        placa

FROM automovel

WHERE fabricante ='fiat' ORDER BY 2 

-- listar clientes com mais de 40 anos
SELECT nome FROM cliente WHERE idade > 40

--clientes com menos de 30 anos
SELECT nome FROM tbcliente WHERE idade < 30

-- listar nome e RG dos clientes que moram Brasilia e tem mais de 30 anos
SELECT  nome,
        rg

FROM cliente

WHERE cidade ='Brasilia' AND idade > 30

-- listar clientes com idade entre 30 e 40 anos
SELECT nome FROM cliente WHERE idade > 30 AND idade < 40

-- listar modelos dos carros fabricados a partir de 2017 da marca fiat
SELECT modelo FROM automovel WHERE fabricante='fiat' AND anofab >= 2017

-- monte uma consulta para o banco seguradora usando com duas condicoes o operador AND e OR 
SELECT nome FROM cliente WHERE estado= 'RJ' AND idade > 28 OR idade < 50  

-- listar nome e idade dos clientes que moram em Brasilia e tem 60 ou 19 anos
SELECT  nome,
        idade

FROM cliente

WHERE estado = 'Brasilia' AND idade >= 60 OR idade <= 19 

--consulta para banco seguradora usando a o operador AND e o operador OR
SELECT cidade FROM cliente WHERE cidade='Rio de Janeiro' AND idade >= 18

--consulta para o banco seguradora usando operador OR
SELECT modelo FROM tbautomovel WHERE fabricante='Ford' OR fabricante='fiat'

CREATE TABLE permissionarios

INSERT INTO permissionarios(numero,nome) VALUES 
( 22,'Lucas'),
(11,'Marcos'),
( 33,'Jose'),
( 23,'Daniel'),
( 34,'Neander'),
(55,'Fabio');

