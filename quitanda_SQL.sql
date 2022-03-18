-- Criar Banco de dados 
CREATE DATABASE db_quitanda;

-- Selecionar o Banco de Dados
USE db_quitanda;

-- Criar Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint auto_increment, 
nome varchar(255) NOT NULL, 
quantidade INT, 
validade date, 
preco decimal NOT NULL, 
PRIMARY KEY (id)
);

-- Inserir dados na tabela
INSERT INTO tb_produtos (nome, quantidade, validade, preco)
VALUES ("arroz", 50, "2023-04-29", 20.00);

INSERT INTO tb_produtos (nome, quantidade, validade, preco)
VALUES ("chuchu", 20, "2022-04-18", 3.00);

INSERT INTO tb_produtos (nome, quantidade, validade, preco)
VALUES ("tomate", 80, "2022-03-19", 16.00);

INSERT INTO tb_produtos (nome, quantidade, validade, preco)
VALUES ("cenoura", 30, "2022-05-29", 13.00);

INSERT INTO tb_produtos (nome, quantidade, validade, preco)
VALUES ("morango", 1, "2022-03-20", 8.50);

-- Listar todos os produtos
SELECT * FROM tb_produtos;

-- Atualizar os dados da Tabela

UPDATE tb_produtos SET preco = 8.50 WHERE id = 5;

ALTER TABLE tb_produtos MODIFY preco decimal(8,2);

SELECT * FROM tb_produtos;

-- ALteracao de estrtutura da tabela 

ALTER TABLE tb_produtos ADD descricao varchar(255);

ALTER TABLE tb_produtos DROP descricao;
