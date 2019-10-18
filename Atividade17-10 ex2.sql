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
(1, 'Adna Distribuicao de Generos Alimenticios', 'carnes', 'carne bovina', 0, 32.5, 66.4, 110, 'Kg', 12.79);
(2, 'Adna Distribuicao de Generos Alimenticios', 'laticinios', 'leite em po integral', 30.8, 21.5, 48.5, 200, 'Un', 6.74);
(3, 'Adna Distribuicao de Generos Alimenticios', 'frios', 'queijo mussarela', 0, 34.5, 77.5, 95, 'Kg', 12.58);
(4, 'Adna Distribuicao de Generos Alimenticios', 'graos', 'feijao preto', 63.8, 30, 5.6, 228, 'Kg', 2.78);
(5, '3W Comercio Representacao Generos Alimenticios', 'legumes', 'abobora', 0, 0, 0, 55, 'Kg', 1.46);
(6, '3W Comercio Representacao Generos Alimenticios', 'frutas', 'banana', 102.7, 4.9, 3.3, 87, 'Kg', 2.60);
(7, '3W Comercio Representacao Generos Alimenticios', 'frutas', 'laranja', 93, 9.3, 0, 103, 'Kg', 0.89);
(8, '3W Comercio Representacao Generos Alimenticios', 'conserva', 'azeitona', 2.2, 4.4, 94, 377, 'Un', 5.82);
(9, 'Frutos da Terra Natureza e Cia Alimentos', 'graos', 'arroz', 88.2, 7.7, 0, 100, 'Kg', 1.68);
(10, 'Frutos da Terra Natureza e Cia Alimentos', 'graos', 'arroz', 88.2, 7.7, 0, 100, 'Kg', 1.68);

