CREATE DATABASE db_rh;

USE db_rh;
CREATE TABLE tb_colaboradores(
id bigint auto_increment,

nome varchar(255) not null,
idade int not null,
setor varchar(255) not null,
cargo varchar(255) not null,
salario decimal(8,2) not null,

PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(nome, idade, setor, cargo, salario)
values ("Amanda", 21, "T.I", "Estágiaria", 1500);
INSERT INTO tb_colaboradores(nome, idade, setor, cargo, salario)
values ("Morgana", 33, "Financeiro", "Contadora", 4000),
		("Tomas", 28, "Marketing", "Vendedor", 1900),
        ("Luiz", 45, "Administrativo", "Gerente", 5000),
        ("Sabrina", 25, "T.I", "Suporte Técnico", 2500);
        
SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2700 WHERE id = 5;