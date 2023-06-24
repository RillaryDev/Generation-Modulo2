CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint auto_increment,
sabor_pizza varchar(255) not null,
tamanho_pizza varchar(255) not null,
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
id bigint auto_increment,
sabores varchar(255) not null,
borda varchar(255),
bebida varchar(255),
preco decimal(8,2) not null,
PRIMARY KEY (id)
);

ALTER TABLE tb_pizzas ADD categoria_id bigint;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categoria
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id);

INSERT INTO tb_categoria (sabor_pizza,tamanho_pizza) 
values ("Salgado","Grande");
INSERT INTO tb_categoria (sabor_pizza, tamanho_pizza) 
values ("Salgado","Médio");
INSERT INTO tb_categoria (sabor_pizza, tamanho_pizza)
values ("Salgado","Pequeno");
INSERT INTO tb_categoria (sabor_pizza, tamanho_pizza) 
values ("Doce","Grande");
INSERT INTO tb_categoria (sabor_pizza, tamanho_pizza) 
values ("Doce","Médio");
INSERT INTO tb_categoria (sabor_pizza, tamanho_pizza) 
values ("Doce","Pequeno");

INSERT INTO tb_pizzas (sabores, borda, bebida, preco, categoria_id)
values ("Calabresa", null, "Guaraná Antartica", 55.00, 2),
	   ("Mussarela", "Catupiry", "Coca-Cola", 70.00, 1),
       ("Frango com catupiry", "Catupiry", "Coca-Cola", 46.00, 3),
	   ("Peperoni", null, null, 35.00, 2),
	   ("Brigadeiro", null, "Guaraná Antartica", 35.00, 6),
	   ("Prestigio", "Chocolate", "Guaraná Antartica", 65.00, 4),
	   ("Banana com Canela", "Doce de Leite", null , 40.00, 5),
	   ("Churros", null, null, 30.00, 6);
       
       
SELECT * FROM tb_categoria;

SELECT * FROM tb_pizzas;
       
SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE sabores LIKE "M%";

SELECT * FROM tb_pizzas 
INNER JOIN tb_categoria ON tb_categoria.id = tb_pizzas.categoria_id; 

SELECT * FROM tb_pizzas 
INNER JOIN tb_categoria ON tb_categoria.id = tb_pizzas.categoria_id
WHERE sabor_pizza = "Salgado"; 

	















