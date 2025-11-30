INSERT INTO ALUNO (nome, email, cpf, data_nascimento, endereco) VALUES
('Lucas Andrade', 'lucas@gmail.com', '12345678901', '1998-04-10', 'Rua A, 123'),
('Mariana Costa', 'mariana@gmail.com', '98765432100', '1995-07-22', 'Rua B, 45'),
('Pedro Santos',  'pedro@gmail.com', '11122233344', '2000-11-15', 'Rua C, 88'),
('Ana Paula',     'ana@gmail.com',   '55566677788', '1999-02-01', 'Rua D, 55'),
('João Mendes',   'joao@gmail.com',  '99988877766', '2001-09-18', 'Rua E, 202');

INSERT INTO INSTRUTOR (nome, email, especializacao, curriculo) VALUES
('Carlos Ribeiro', 'carlos@uni.com', 'Programação', 'Experiência em Java e Python'),
('Fernanda Lima', 'fernanda@uni.com', 'Banco de Dados', 'Especialista em SQL'),
('Rafaela Souza', 'rafaela@uni.com', 'Design', 'Designer UX/UI');

INSERT INTO CURSO (titulo, categoria, carga_horaria, valor, id_instrutor) VALUES
('Python Básico', 'Programação', 40, 199.90, 1),
('SQL Completo', 'Banco de Dados', 60, 249.90, 2),
('UX Design', 'Design', 50, 299.90, 3),
('Estruturas de Dados', 'Programação', 80, 399.90, 1);

INSERT INTO MODULO (id_curso, titulo, ordem) VALUES
(1,'Introdução ao Python',1),
(1,'Estruturas Básicas',2),
(2,'Introdução ao SQL',1),
(2,'Consultas Avançadas',2),
(3,'Fundamentos de UX',1),
(3,'Prototipação',2),
(4,'Algoritmos Básicos',1),
(4,'Estruturas Avançadas',2);

INSERT INTO AULA (id_modulo, titulo, duracao) VALUES
(1,'História do Python',10),
(1,'Instalação',15),
(2,'Variáveis',20),
(2,'Loops',25),
(3,'O que é SQL?',18),
(3,'Comandos Básicos',22),
(4,'JOINs Avançados',30),
(4,'Subqueries',35),
(5,'Introdução ao UX',20),
(6,'Montando Wireframes',25),
(7,'Introdução a Algoritmos',20),
(8,'Filas e Pilhas',25);

INSERT INTO MATRICULA (id_aluno, id_curso, data_matricula, status, forma_pagamento) VALUES
(1,1,'2024-01-12','ativa','cartão'),
(1,2,'2024-02-01','ativa','boleto'),
(2,3,'2024-01-20','concluída','cartão'),
(3,1,'2024-03-10','ativa','pix'),
(4,4,'2024-03-15','ativa','cartão');

INSERT INTO PROGRESSO (id_aluno, id_aula, concluida, data_conclusao, tempo_gasto) VALUES
(1,1,1,'2024-01-15',10),
(1,2,1,'2024-01-16',15),
(1,3,0,NULL,0),
(2,9,1,'2024-01-22',20),
(3,1,1,'2024-03-11',12);
