CREATE DATABASE e_commerce;
USE e_commerce;

-- Criando a tabela
CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar (150),
quantidade int,
tamanho varchar (5),
cor varchar (50),
preco decimal,
primary key (id)
);

-- Inserindo dados na tabela
INSERT INTO tb_produtos (nome, quantidade, tamanho, cor, preco)
VALUES ("Camiseta", 50, "M", "Branca", 39.90);

INSERT INTO tb_produtos (nome, quantidade, tamanho, cor, preco)
VALUES ("Bermuda", 100, "G", "Preta", 78.89);

INSERT INTO tb_produtos (nome, quantidade, tamanho, cor, preco)
VALUES ("Calça", 50, "G", "Jeans", 119.90);

INSERT INTO tb_produtos (nome, quantidade, tamanho, cor, preco)
VALUES ("Lenço", 30, "Único", "Nude", 49.90);

INSERT INTO tb_produtos (nome, quantidade, tamanho, cor, preco)
VALUES ("Camiseta", 50, "M", "Preta", 39.90);

INSERT INTO tb_produtos (nome, quantidade, tamanho, cor, preco)
VALUES ("Vestido", 50, "P", "Florido", 129.90);

INSERT INTO tb_produtos (nome, quantidade, tamanho, cor, preco)
VALUES ("Saia", 100, "M", "Preta", 89.90);

INSERT INTO tb_produtos (nome, quantidade, tamanho, cor, preco)
VALUES ("Colete", 45, "M", "Azul Marinho", 79.90);

-- Mostrar tabela
SELECT * FROM tb_produtos;

-- Alterando a coluna de preço na tabela
ALTER TABLE tb_produtos MODIFY preco decimal (5, 2);

-- Atualizando preços de produtos
UPDATE tb_produtos SET preco = 556.90 WHERE id = 2;
UPDATE tb_produtos SET preco = 621.59 WHERE id = 3;
UPDATE tb_produtos SET preco = 822.29 WHERE id = 6;

-- Mostrando produtos com valor maior do que 500 e menor do que 500
SELECT * FROM tb_produtos WHERE preco < 500;
SELECT * FROM tb_produtos WHERE preco > 500;