CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- Criando tabela de categorias
CREATE TABLE tb_categorias (
id bigint auto_increment,
tipo varchar (255),
forno varchar (255),
primary key (id)
);

INSERT INTO tb_categorias (tipo, forno)
VALUES ("Salgada", "Lenha");

INSERT INTO tb_categorias (tipo, forno)
VALUES ("Doce", "Lenha");

INSERT INTO tb_categorias (tipo, forno)
VALUES ("Broto Salgado", "Lenha");

INSERT INTO tb_categorias (tipo, forno)
VALUES ("Broto Doce", "Lenha");

INSERT INTO tb_categorias (tipo, forno)
VALUES ("Calzone", "Elétrico");

SELECT * FROM tb_categorias;

-- Criando tabela de pizzas
CREATE TABLE tb_pizzas (
id bigint auto_increment,
nome varchar (255),
preco decimal (10, 2),
peso int,
calorias int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias (id)
);

-- Alterando o tipo de atributo
ALTER TABLE tb_pizzas MODIFY peso varchar (255);
ALTER TABLE tb_pizzas MODIFY calorias varchar (255);

-- Inserindo os valores
INSERT INTO tb_pizzas (nome, preco, peso, calorias, categoria_id)
VALUES ("Mussarela", 39.90, "900g", "2700 Kcal", 1);

INSERT INTO tb_pizzas (nome, preco, peso, calorias, categoria_id)
VALUES ("Marguerita", 45.90, "900g", "2565 Kcal", 1);

INSERT INTO tb_pizzas (nome, preco, peso, calorias, categoria_id)
VALUES ("Califórnia", 57.90, "900g", "2310 Kcal", 1);

INSERT INTO tb_pizzas (nome, preco, peso, calorias, categoria_id)
VALUES ("Brigadeiro", 60.90, "900g", "2062 Kcal", 2);

INSERT INTO tb_pizzas (nome, preco, peso, calorias, categoria_id)
VALUES ("Prestígio", 65.90, "900g", "1792 Kcal", 2);

INSERT INTO tb_pizzas (nome, preco, peso, calorias, categoria_id)
VALUES ("Atum", 55.90, "450g", "768 Kcal", 3);

INSERT INTO tb_pizzas (nome, preco, peso, calorias, categoria_id)
VALUES ("Salmão", 113.90, "450g", "1192 Kcal", 3);

INSERT INTO tb_pizzas (nome, preco, peso, calorias, categoria_id)
VALUES ("Brigadeiro", 39.90, "450g", "1031 Kcal", 4);

INSERT INTO tb_pizzas (nome, preco, peso, calorias, categoria_id)
VALUES ("Presunto e Queijo", 42.90, "400g", "1392 Kcal", 5);

-- Visualizar tabela de pizzas
SELECT * FROM tb_pizzas;

-- Pizzas com valor maior do que 45 reais
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Pizzas entre 50 e 100 reais
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- Pizzas com a letra M no nome
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

-- Inner Join (Completo)
SELECT nome, preco, peso, calorias, tb_categorias.tipo, tb_categorias.forno
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;

-- Inner Join (Uma categoria)
SELECT nome, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id WHERE tb_categorias.tipo = "Salgada";