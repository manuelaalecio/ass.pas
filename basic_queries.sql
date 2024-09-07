
-- Consultas básicas no banco de dados

-- Listar todos os alunos cadastrados
SELECT * FROM alunos;

-- Listar todas as atividades com seus responsáveis
SELECT nome, responsavel_atividade FROM atividades;

-- Consultar as participações dos alunos nas atividades
SELECT a.nome AS aluno, at.nome AS atividade, p.data_participacao, p.feedback
FROM participacoes p
JOIN alunos a ON p.aluno_id = a.id
JOIN atividades at ON p.atividade_id = at.id;

-- Consultar recursos disponíveis
SELECT * FROM recursos WHERE disponivel = TRUE;

-- Atualizar quantidade de um recurso (ex: retirar um livro emprestado)
UPDATE recursos
SET quantidade = quantidade - 1
WHERE nome = 'Livro de Matemática - Volume 1' AND quantidade > 0;

-- Excluir uma participação (ex: correção de registro)
DELETE FROM participacoes WHERE id = 3;
