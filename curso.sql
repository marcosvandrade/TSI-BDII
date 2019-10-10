CREATE TABLE tbcurso(
	codigo  INT PRIMARY KEY,
	nome	VARCHAR(30) NOT NULL,
	cargaH	INT,
	descricao VARCHAR(50)
)


CREATE TABLE tbaluno(
	codigo INT,
	nome   VARCHAR(30) NOT NULL,
	CPF    INT UNIQUE,
	CONSTRAINT pk_codigo PRIMARY KEY(codigo),
	CONSTRAINT fk_aluno_curso FOREIGN KEY(codigo)
			REFERENCES tbcurso(codigo)
			ON DELETE CASCADE ON UPDATE CASCADE	
)

CREATE TABLE tbprofessor(
	codigo INT,
	matricula INT,
	sexo	CHAR(1) NOT NULL,
	data_matricula DATE,
	UF	CHAR(2) DEFAULT 'DF',
	CONSTRAINT pk_tbprofessor PRIMARY KEY(codigo),
	CONSTRAINT fk_professor_curso FOREIGN KEY(codigo)
		REFERENCES tbcurso(codigo)
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT ck_sexo CHECK(sexo IN('M','F'))
)


ALTER TABLE tbprofessor RENAME TO professor


ALTER TABLE tbaluno RENAME TO aluno 

ALTER TABLE tbcurso RENAME TO curso

ALTER TABLE professor DROP COLUMN data_matricula RESTRICT