/*  Exercício Proposto: 
1. Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa. 
1.1 Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
1.2 Popule esta tabela com até 5 dados;
1.3 Faça um select que retorne os funcionaries com o salário maior do que 2000.
1.4 Faça um select que retorne os funcionaries com o salário menor do que 2000.
1.5 Ao término atualize um dado desta tabela através de uma query de atualização.
*/
CREATE DATABASE exemplo_rh;

USE exemplo_rh;

CREATE TABLE tb_funcionario(
id bigint auto_increment, 
nome varchar(255) NOT NULL, 
cargo varchar (255) NOT NULL, 
admissao date, 
salario decimal NOT NULL, 
PRIMARY KEY (id)
);


ALTER TABLE tb_produtos MODIFY salario decimal(8,2);

INSERT INTO tb_funcionario (nome, cargo, admissao,salario)
VALUES ("Adriana", "Desenvolvedora", "2022-01-13", 2500.00);

INSERT INTO tb_funcionario (nome, cargo, admissao,salario)
VALUES ("William", "Aux Marketing", "2022-01-24", 1380.00);

INSERT INTO tb_funcionario (nome, cargo, admissao,salario)
VALUES ("Roberta", "Coord. Financeira", "2022-01-12", 5670.00);

INSERT INTO tb_funcionario (nome, cargo, admissao,salario)
VALUES ("Douglas", "Tech Lead", "2022-03-18", 9865.00);

INSERT INTO tb_funcionario (nome, cargo, admissao,salario)
VALUES ("Vinicius", "estagiario", "2022-03-18", 1500.00);

SELECT * FROM tb_funcionario;

SELECT * FROM tb_funcionario WHERE salario > 2000.00;

SELECT * FROM tb_funcionario WHERE salario < 2000.00;

UPDATE tb_funcionario SET salario = 2800.00 WHERE id = 1;



