
--criando a tabela cliente
CREATE TABLE tbCliente(
	codigo_cli INT,
	CPF_cli CHAR(11),
	nome_cli VARCHAR(20) NOT NULL,
	data_cadastro DATE,
	cidade_cli VARCHAR(20),
	UF_cli CHAR(2) DEFAULT 'PR',
	CONSTRAINT un_CPFcli UNIQUE(CPF_cli),
	CONSTRAINT pk_tbCliente PRIMARY KEY(codigo_cli)
)


--criando a tabela categoria
CREATE TABLE tbCategoria(
	codigo_categoria INT PRIMARY KEY,
	nome_categoria VARCHAR(20)
)

--criando a tabela classe
CREATE TABLE tbClasse(
	codigo_classe INT PRIMARY KEY,
	nome_classe VARCHAR(20),
	preco_classe FLOAT
)

--criando a tabela titulo
CREATE TABLE tbTitulo(
	codigo_titulo INT PRIMARY KEY,
	nome_titulo VARCHAR(50),
	ano NUMERIC(4),
	codigo_categoria INT,
	codigo_classe INT,
	CONSTRAINT fk_tbTitulo_tbCategoria FOREIGN KEY(codigo_titulo)
			   REFERENCES tbCategoria(codigo_categoria),
	CONSTRAINT fk_tbTitulo_tbClasse FOREIGN KEY(codigo_titulo)
			   REFERENCES tbClasse(codigo_classe)
)
 
--criando a tabela filme
CREATE TABLE tbFilme(
	codigo_filme INT PRIMARY KEY,
	codigo_titulo INT,
	nome_distribuidor VARCHAR(20),
	CONSTRAINT fk_tbFilme_tbTitulo FOREIGN KEY(codigo_filme)
			   REFERENCES tbTitulo(codigo_titulo)
)

--criando a tabela emprestimo_devolucao
CREATE TABLE tbEmprestimo_devolucao(
	codigo_cli INT,
	codigo_filme INT,
	data_emprestimo DATE,
	data_devolucao_prevista DATE,
	data_devolucao_efetiva DATE,
	valor_multa FLOAT,
	CONSTRAINT pk_tbEmpestimo_devolucao PRIMARY KEY(codigo_cli, codigo_filme, data_emprestimo),
	CONSTRAINT fk_tbEmprestimo_tbCliente FOREIGN KEY(codigo_cli)
			   REFERENCES tbCliente(codigo_cli),
	CONSTRAINT fk_tbEmprestimo_tbFilme FOREIGN KEY(codigo_filme)
			   REFERENCES tbFilme(codigo_filme)
)

--exercicio 3
-- 1. alterando o nome de uma tabela
--alterando o nome da tabela cliente
ALTER TABLE tbCliente RENAME TO Cliente

-- 2. alterar o nome de uma coluna da tabela
-- alterando o nome da coluna de nome_cli para nome_cliente
ALTER TABLE Cliente RENAME COLUMN nome_cli TO nome_cliente

-- 3. remover uma tabela
-- criado a tabela teste e removido em seguida
CREATE TABLE teste(
	id INT PRIMARY KEY,
	nome VARCHAR(10)
)

DROP TABLE teste

-- 4. inserir uma nova tabela
-- criado uma tabela rotulo
CREATE TABLE rotulo(
	id INT PRIMARY KEY,
	nome VARCHAR(10)
)

-- 5. remover uma coluna
-- removendo a coluna nome
ALTER TABLE rotulo DROP COLUMN nome

-- 6. inserir uma nova coluna em uma tabela
-- adicionado a coluna nome
ALTER TABLE rotulo ADD COLUMN nome VARCHAR(10)

-- 7. inserir uma restricao na tabela
-- setando a coluna nome para nao aceitar valores nulos
ALTER TABLE rotulo ALTER COLUMN nome SET NOT NULL

-- 8. alterar o tipo de dados de uma coluna
-- alterando o tipo da coluna nome de VARCHAR para CHAR
ALTER TABLE rotulo ALTER COLUMN nome TYPE CHAR(20)

-- 9. definir o valor padrao de uma coluna(DEFAULT)
ALTER TABLE rotulo ALTER COLUMN nome SET DEFAULT 'Marcos'
