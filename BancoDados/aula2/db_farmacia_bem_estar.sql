CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categoria(
id bigint auto_increment,
descricao varchar (255),
quantidade varchar(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
id bigint auto_increment,
Medicamento varchar(255) not null,
Marca varchar(255) not null,
mg_ml_g int not null,
Preco decimal(8,2) not null,
PRIMARY KEY (id)
);

ALTER TABLE tb_produtos ADD categoria_id bigint;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categoria
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id);

INSERT INTO tb_categoria (descricao, quantidade)
values ("Genérico", "mg"),
       ("Genérico", "ml"),
	   ("Genérico", "g"),
       ("Referência", "mg"),
       ("Referência", "ml"),
	   ("Referência", "g");
       
INSERT INTO tb_produtos(Medicamento, Marca, mg_ml_g, Preco, categoria_id)
values ("Cloridrato de Fexofenadina"," Allegra", 120, 68.00, 4),
	   ("Dipirona Monoidratada", "Prati", 1, 20.00, 3),
	   ("Colírio", "Lacrimax", 15, 50.00, 5),
       ("Loratadina", "Medquímica", 1, 16.00, 2),
       ("Ibuprofeno", "Buscofem", 400, 23.90, 4),
	   ("Omeprazol", "Cimed", 20, 23.90, 1),
	   ("Amoxicilina", "Teuto", 5, 55.00, 2),
	   ("Paracetamol", "Tylenol", 1, 36.90 , 6);
       
SELECT * FROM tb_categoria;

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE Medicamento LIKE "%c%";

SELECT * FROM tb_produtos
INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id 
WHERE descricao = "Genérico";






       




