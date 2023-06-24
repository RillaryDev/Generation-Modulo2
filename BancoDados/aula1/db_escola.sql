CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
serie varchar(255) not null,
matricula int not null,
materia varchar(255) not null,
nota decimal (3,1) not null,
PRIMARY KEY(id) 
);

INSERT INTO tb_alunos(nome, serie, matricula, materia, nota)
values("Bruno", "9 ano", 2209, "Matemática", 9.5);
INSERT INTO tb_alunos(nome, serie, matricula, materia, nota)
values("Paulo", "7 ano", 1345, "Português", 4.0),
	  ("Letícia", "9 ano", 3405, "História", 10.0),
	  ("Lucas", "8 ano", 6782, "História", 6.5),
	  ("Theo", "3 ano", 5789, "Geografia", 7.0),
	  ("Tais", "7 ano", 2344, "Biologia", 8.0),
	  ("Hanna", "2 ano", 4765, "Matemática", 8.5);
      
SELECT * FROM tb_alunos WHERE nota > 7;

SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET nota = 7.5 WHERE id = 5;