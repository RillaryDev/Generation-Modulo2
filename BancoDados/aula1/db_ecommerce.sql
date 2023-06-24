CREATE DATABASE db_ecommerce;

USE db_ecommerce;
CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
categoria varchar(255) not null,
marca varchar(255) not null,
estoque int not null,
preco decimal(8,2) not null,
PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, categoria, marca, estoque, preco)
values("SmartTV", "Eletronicos", "LG", 3, 6000);
INSERT INTO tb_produtos(nome, categoria, marca, estoque, preco)
values("Mortal Kombat", "Games", "Capcom", 2, 200),
	  ("Microfone", "Eletrônicos", "HyperX", 5, 750),
	  ("Os Sete Maridos de Evelyh Hugo", "Livros", "Paralela", 8, 40),
	  ("Chuveiro", "Casa", "Docol", 4, 180),
	  ("iPhone 11", "Celulares", "Apple", 3, 3500),
      ("Ultima Parada", "Livros", "Paralela", 9, 35),
	  ("Bicicleta", "Esporte", "Caloi", 2, 1800);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET estoque = 2 WHERE id = 4;