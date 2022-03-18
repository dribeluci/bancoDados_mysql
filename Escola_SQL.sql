/* Exercício Proposto:  
1. Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
1.1 Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
1.2 Popule esta tabela com até 8 dados;
1.3 Faça um select que retorne o/as estudantes  com a nota maior do que 7.
1.4 Faça um select que retorne o/as estudantes  com a nota menor do que 7.
1.5 Ao término atualize um dado desta tabela através de uma query de atualização.
*/

Create database exemplo_escola;
USE exemplo_escola;

Create Table cad_alunos (
 id bigint auto_increment,
 nome varchar (255) NOT NULL,
 nascimento  date,
 matricula varchar(8) NOT NULL, 
 notaFinal decimal, 
primary key (id)
);

ALTER TABLE cad_alunos MODIFY notaFinal decimal(8,2);

INSERT INTO cad_alunos (nome, nascimento, matricula, notaFinal)
Values ("Adriana", "2000-01-31", 12345678, 8.00);

INSERT INTO cad_alunos (nome, nascimento, matricula, notaFinal)
Values ("Bernardo", "2000-04-28", 23456789, 3.00);

INSERT INTO cad_alunos (nome, nascimento, matricula, notaFinal)
Values ("Claudia", "2000-07-12", 23456789, 9.00);

INSERT INTO cad_alunos (nome, nascimento, matricula, notaFinal)
Values ("Douglas", "2000-08-14", 23456789, 4.00);

INSERT INTO cad_alunos (nome, nascimento, matricula, notaFinal)
Values ("Elena", "2000-03-22", 23456789, 5.00);

SELECT * FROM cad_alunos WHERE notaFinal > 7.00;

SELECT * FROM cad_alunos WHERE notaFinal < 7.00;

UPDATE cad_alunos SET notaFinal= 6.00 WHERE id = 5;