CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- Criando tabela de categorias
CREATE TABLE tb_categorias (
id bigint auto_increment,
tipo varchar (255),
hipoalergenico varchar (255),
frete varchar (255),
primary key (id)
);

INSERT INTO tb_categorias (tipo, hipoalergenico, frete)
VALUES ("Medicamentos", "Não", "Grátis");

INSERT INTO tb_categorias (tipo, hipoalergenico, frete)
VALUES ("Saúde", "Sim", "Grátis");

INSERT INTO tb_categorias (tipo, hipoalergenico, frete)
VALUES ("Vitaminas", "Não", "Pago");

INSERT INTO tb_categorias (tipo, hipoalergenico, frete)
VALUES ("Cosméticos", "Não", "Pago");

INSERT INTO tb_categorias (tipo, hipoalergenico, frete)
VALUES ("Mamãe & Bebê", "Sim", "Grátis");

-- Visualizar tabela de categorias
SELECT * FROM tb_categorias;

-- Criando tabela de produtos
CREATE TABLE tb_produtos (
id bigint auto_increment,
nome varchar (255),
quantidade int,
marca varchar (255),
preco decimal (10, 2),
validade date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias (id)
);

-- Inserindo valores
INSERT INTO tb_produtos (nome, quantidade, marca, preco, validade, categoria_id)
VALUES ("Losartana", 30, "Medley", 5.75, "2024-07-20", 1);

INSERT INTO tb_produtos (nome, quantidade, marca, preco, validade, categoria_id)
VALUES ("Dipirona", 10, "EMS", 4.49, "2024-07-20", 1);

INSERT INTO tb_produtos (nome, quantidade, marca, preco, validade, categoria_id)
VALUES ("Medidos de Glicemia", 10, "Accu-Check", 136.99, "2024-07-20", 2);

INSERT INTO tb_produtos (nome, quantidade, marca, preco, validade, categoria_id)
VALUES ("Monitor de Pressão", 20, "Omron", 218.99, "2024-07-20", 2);

INSERT INTO tb_produtos (nome, quantidade, marca, preco, validade, categoria_id)
VALUES ("Vitamina C", 100, "Cimed", 31.99, "2024-07-20", 3);

INSERT INTO tb_produtos (nome, quantidade, marca, preco, validade, categoria_id)
VALUES ("Vitamina E", 100, "Aché", 39.19, "2024-07-20", 3);

INSERT INTO tb_produtos (nome, quantidade, marca, preco, validade, categoria_id)
VALUES ("Protetor Solar", 50, "Isdin", 78.99, "2024-10-20", 4);

INSERT INTO tb_produtos (nome, quantidade, marca, preco, validade, categoria_id)
VALUES ("Sérum Facial", 50, "Avène", 163.99, "2025-07-20", 4);

INSERT INTO tb_produtos (nome, quantidade, marca, preco, validade, categoria_id)
VALUES ("Fralda", 60, "Pampers", 108.99, "2026-07-20", 5);

INSERT INTO tb_produtos (nome, quantidade, marca, preco, validade, categoria_id)
VALUES ("Creme para Assaduras", 200, "Bepantol", 43.19, "2024-07-20", 5);

-- Visualizar a tabela de produtos
SELECT * FROM tb_produtos;

-- Produtos com valor maior do que 50 reais
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- Produtos com valores entre 5 e 60 reais
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- Produtos com a letra C no nome
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- Inner Join (Todas as categorias)
SELECT nome, quantidade, marca, preco, validade, tb_categorias.tipo, tb_categorias.hipoalergenico, tb_categorias.frete
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;

-- Inner Join (Uma categoria)
SELECT nome, preco, tb_categorias.tipo
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id WHERE tb_categorias.tipo = "Mamãe & Bebê";