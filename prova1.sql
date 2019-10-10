CREATE TABLE cliente(
    cod int PRIMARY KEY,
    nome VARCHAR(30),
    rg VARCHAR(15),
    fone VARCHAR(10)
)

CREATE TABLE carro(
    cod int PRIMARY KEY,
    modelo VARCHAR(10),
    valor REAL,
    codcliente INT,
    CONSTRAINT  fk_carro_cliente FOREIGN KEY(cod)
                REFERENCES cliente(cod)
)

CREATE TABLE ocorrencia(
    cod INT PRIMARY KEY,
    descricao VARCHAR(30),
    codcarro INT,
    CONSTRAINT  fk_ocorrencia_carro FOREIGN KEY(cod)
                REFERENCES carro(cod)
)

INSERT INTO cliente VALUES  (1, 'Marcos', '123456', '383847475')

INSERT INTO cliente (cod, nome, rg) VALUES (2, 'Fábio', 12123217475)

INSERT INTO cliente VALUES  (3, 'Lucas', '343543566', '847475'),

                            (4, 'Rosi', '5656567475', '989980080')

INSERT INTO carro VALUES (1, 'FIAT', 30000.00, 10)

INSERT INTO carro (cod, modelo, valor) VALUES (2, 'MERCEDES', 121500.99)

INSERT INTO carro (cod, modelo, valor) VALUES (3, 'FUSCA', 5000)

UPDATE cliente SET nome = 'Melissa'
WHERE cod = 2

DELETE FROM carro WHERE cod = 3

SELECT * FROM cliente

SELECT * FROM carro


