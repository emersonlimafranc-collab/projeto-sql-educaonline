-- 1. Listar todos os alunos ordenados por nome
SELECT nome, email FROM ALUNO ORDER BY nome;

-- 2. Buscar cursos acima de R$ 200
SELECT titulo, valor FROM CURSO WHERE valor > 200;

-- 3. Listar matrículas com nome do aluno e curso
SELECT a.nome, c.titulo, m.data_matricula
FROM MATRICULA m
JOIN ALUNO a ON m.id_aluno = a.id_aluno
JOIN CURSO c ON m.id_curso = c.id_curso;

-- 4. Buscar aulas com duração maior que 20 minutos
SELECT titulo, duracao FROM AULA WHERE duracao > 20 ORDER BY duracao DESC;

-- 5. Listar progresso de um aluno
SELECT a.nome, au.titulo, p.concluida
FROM PROGRESSO p
JOIN ALUNO a ON p.id_aluno = a.id_aluno
JOIN AULA au ON p.id_aula = au.id_aula
WHERE a.id_aluno = 1;
