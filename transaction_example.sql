
-- Exemplo de uso de transação
BEGIN;

-- Adicionar um novo aluno
INSERT INTO alunos (nome, data_nascimento, genero, responsavel, contato_responsavel)
VALUES ('Lucas Martins', '2009-07-20', 'Masculino', 'Silvia Martins', '11955554444');

-- Atualizar recurso associado ao novo aluno
UPDATE recursos
SET quantidade = quantidade - 1
WHERE nome = 'Computador para Aulas' AND quantidade > 0;

COMMIT;
