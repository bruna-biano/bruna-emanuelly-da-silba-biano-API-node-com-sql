CREATE DATABASE IF NOT EXISTS atividade_api
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE atividade_api;

CREATE TABLE IF NOT EXISTS usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL UNIQUE,
  idade INT NULL,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO usuarios (nome, email, idade) VALUES
('Ana Souza', 'ana.souza@example.com', 22),
('Carlos Lima', 'carlos.lima@example.com', 25);
