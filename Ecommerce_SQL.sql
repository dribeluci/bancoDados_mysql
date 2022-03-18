/* Exercicio Proposto:
1. Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 
1.1 Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
1.2 Popule esta tabela com até 8 dados;
1.3 Faça um select que retorne os produtos com o valor maior do que 500.
1.4 Faça um select que retorne os produtos com o valor menor do que 500.
1.5 Ao término atualize um dado desta tabela através de uma query de atualização. */

Create database exemplo_ecommerce;
USE exemplo_ecommerce;

Create Table tb_produtos (
 id bigint auto_increment,
 nome varchar (255) NOT NULL,
 categoria varchar (255) NOT NULL,
 quantidade int, 
 preco decimal NOT NULL,
  primary key (id)
);

ALTER TABLE tb_produtos MODIFY preco decimal(8,2);

INSERT INTO tb_produtos(nome, categoria, quantidade, preco)
VALUES("Camisa Rosa","Masculino", 20, 39.90);

INSERT INTO tb_produtos(nome, categoria, quantidade, preco)
VALUES("Camisa Azul","Masculino", 20, 39.90);

INSERT INTO tb_produtos(nome, categoria, quantidade, preco)
VALUES("Caça Jeans ","Masculino", 45, 87.99);

INSERT INTO tb_produtos(nome, categoria, quantidade, preco)
VALUES("Caça Moletom ","Masculino", 45, 71.99);

INSERT INTO tb_produtos(nome, categoria, quantidade, preco)
VALUES("Camisa Amarela","Feminina", 20, 49.99);

INSERT INTO tb_produtos(nome, categoria, quantidade, preco)
VALUES("Camisa Floral","Feminina", 20, 49.99);

INSERT INTO tb_produtos(nome, categoria, quantidade, preco)
VALUES("Calça Jeans Fem","Feminina", 30, 99.99);

INSERT INTO tb_produtos(nome, categoria, quantidade, preco)
VALUES("Saia de Couro","Feminina", 10, 99.99);

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco= 340.00 WHERE id = 3;
