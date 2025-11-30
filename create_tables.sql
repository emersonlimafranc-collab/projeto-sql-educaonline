CREATE TABLE ALUNO (
  id_aluno INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  cpf CHAR(11) NOT NULL UNIQUE,
  data_nascimento DATE,
  endereco VARCHAR(255)
);

CREATE TABLE INSTRUTOR (
  id_instrutor INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  especializacao VARCHAR(100),
  curriculo TEXT
);

CREATE TABLE CURSO (
  id_curso INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(150) NOT NULL,
  categoria VARCHAR(50),
  carga_horaria INT,
  valor DECIMAL(10,2),
  id_instrutor INT NOT NULL,
  FOREIGN KEY (id_instrutor) REFERENCES INSTRUTOR(id_instrutor)
);

CREATE TABLE MODULO (
  id_modulo INT AUTO_INCREMENT PRIMARY KEY,
  id_curso INT NOT NULL,
  titulo VARCHAR(150) NOT NULL,
  ordem INT NOT NULL,
  FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);

CREATE TABLE AULA (
  id_aula INT AUTO_INCREMENT PRIMARY KEY,
  id_modulo INT NOT NULL,
  titulo VARCHAR(150) NOT NULL,
  duracao INT,
  FOREIGN KEY (id_modulo) REFERENCES MODULO(id_modulo)
);

CREATE TABLE MATRICULA (
  id_matricula INT AUTO_INCREMENT PRIMARY KEY,
  id_aluno INT NOT NULL,
  id_curso INT NOT NULL,
  data_matricula DATE NOT NULL,
  status VARCHAR(20) NOT NULL,
  forma_pagamento VARCHAR(50),
  FOREIGN KEY (id_aluno) REFERENCES ALUNO(id_aluno),
  FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);

CREATE TABLE PROGRESSO (
  id_aluno INT NOT NULL,
  id_aula INT NOT NULL,
  concluida BOOLEAN NOT NULL DEFAULT FALSE,
  data_conclusao DATE,
  tempo_gasto INT,
  PRIMARY KEY (id_aluno, id_aula),
  FOREIGN KEY (id_aluno) REFERENCES ALUNO(id_aluno),
  FOREIGN KEY (id_aula) REFERENCES AULA(id_aula)
);
