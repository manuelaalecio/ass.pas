
-- Inserir dados de exemplo na tabela de alunos
INSERT INTO alunos (nome, data_nascimento, genero, responsavel, contato_responsavel)
VALUES 
('Ana Souza', '2010-04-15', 'Feminino', 'Carlos Souza', '11988887777'),
('João Pereira', '2008-09-30', 'Masculino', 'Maria Pereira', '11977776666'),
('Marcos Silva', '2012-01-25', 'Masculino', 'Fernanda Silva', '11966665555');

-- Inserir dados de exemplo na tabela de atividades
INSERT INTO atividades (nome, descricao, data_inicio, data_fim, responsavel_atividade)
VALUES 
('Aula de Matemática', 'Aulas de reforço de matemática para o ensino fundamental', '2024-09-10', '2024-12-15', 'Prof. Ana Lima'),
('Oficina de Leitura', 'Oficina para incentivo à leitura com contação de histórias', '2024-09-11', '2024-11-30', 'Prof. João Fernandes');

-- Inserir dados de exemplo na tabela de participações
INSERT INTO participacoes (aluno_id, atividade_id, data_participacao, feedback)
VALUES 
(1, 1, '2024-09-11', 'Participou com bastante interesse.'),
(2, 1, '2024-09-12', 'Teve dificuldades com o conteúdo, mas foi bem participativo.'),
(1, 2, '2024-09-15', 'Mostrou grande entusiasmo.');

-- Inserir dados de exemplo na tabela de recursos
INSERT INTO recursos (nome, tipo, quantidade, disponivel)
VALUES 
('Livro de Matemática - Volume 1', 'Livro', 20, TRUE),
('Computador para Aulas', 'Equipamento', 10, TRUE);
