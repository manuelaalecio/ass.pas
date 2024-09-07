
-- Criar a tabela de alunos
CREATE TABLE alunos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    genero VARCHAR(10),
    responsavel VARCHAR(100),
    contato_responsavel VARCHAR(20),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Criar a tabela de atividades
CREATE TABLE atividades (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    responsavel_atividade VARCHAR(100)
);

-- Criar a tabela de participações
CREATE TABLE participacoes (
    id SERIAL PRIMARY KEY,
    aluno_id INT REFERENCES alunos(id),
    atividade_id INT REFERENCES atividades(id),
    data_participacao DATE NOT NULL,
    feedback TEXT
);

-- Criar a tabela de recursos
CREATE TABLE recursos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(50),
    quantidade INT,
    disponivel BOOLEAN DEFAULT TRUE
);
