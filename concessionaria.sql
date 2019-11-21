CREATE TABLE Cliente (
	cnh INTEGER,
	nome VARCHAR(50) NOT NULL,
	PRIMARY KEY(cnh)
)

CREATE TABLE PessoaFisica (
	cpf INTEGER NOT NULL PRIMARY KEY,
	fk_cnh INTEGER,
	FOREIGN KEY(fk_cnh) REFERENCES CLIENTE(cnh),
	UNIQUE(cpf)
)

CREATE TABLE PessoaJuridica (
	cnpj INTEGER NOT NULL PRIMARY KEY,
	fk_cnh INTEGER,
	FOREIGN KEY(fk_cnh) REFERENCES Cliente(cnh),
	UNIQUE(cnpj)
)

CREATE TABLE Endereco (
	id_endereco SERIAL,
	numero INTEGER,
	rua VARCHAR(50) NOT NULL,
	complemento VARCHAR(50),
	bairro VARCHAR(30) NOT NULL,
	cidade VARCHAR(30) NOT NULL,
	estado VARCHAR(30) NOT NULL,
	fk_cnh INTEGER,
	FOREIGN KEY(fk_cnh) REFERENCES Cliente(cnh)
)

CREATE TABLE telefone (
	id SERIAL,
    celular VARCHAR(30) NOT NULL,
	comercial VARCHAR(30),
	residencial VARCHAR(30),
	fk_cnh INTEGER,
	FOREIGN KEY(fk_cnh) REFERENCES Cliente(cnh)
)	

CREATE TABLE Seguro (
	id SERIAL,
	tipo_seguro VARCHAR(30),
	valor_franquia FLOAT NOT NULL,
	empresa_seguro VARCHAR(30) NOT NULL,
	banco_seguro VARCHAR(30) NOT NULL,
	fk_cnh INTEGER,
	FOREIGN KEY(fk_cnh) REFERENCES Cliente(cnh)
)

CREATE TABLE Funcionario (
	matricula INTEGER,
	salario FLOAT(10) NOT NULL,
	cpf VARCHAR(30) NOT NULL,
	data_admissao DATE NOT NULL,
	nome VARCHAR(50) NOT NULL,
	sexo VARCHAR(10),
	PRIMARY KEY(matricula),
	UNIQUE(cpf)
)

CREATE TABLE Veiculo (
	chassi VARCHAR(50),
	quilometragem INTEGER,
	combustivel VARCHAR(10),
	placa VARCHAR(10) NOT NULL,
	ano INTEGER,
	marca VARCHAR(30),
	modelo VARCHAR(30) NOT NULL,
	PRIMARY KEY(chassi)
)

CREATE TABLE Aluguel (
	id SERIAL,
    fk_cnh INTEGER,
	fk_matricula INTEGER,
	fk_chassi VARCHAR(50),
	FOREIGN KEY(fk_cnh) REFERENCES Cliente(cnh),
	FOREIGN KEY(fk_matricula) REFERENCES Funcionario(matricula),
	FOREIGN KEY(fk_chassi) REFERENCES Veiculo(chassi)
)

CREATE TABLE Gerente (
	matricula INTEGER PRIMARY KEY,
	possui_matricula BOOLEAN NOT NULL,
	fk_matricula INTEGER,
	FOREIGN KEY(fk_matricula) REFERENCES Funcionario(matricula),
	UNIQUE(matricula)
)
