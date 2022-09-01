CREATE DATABASE db_rh;
USE db_rh;

-- Criando a tabela
CREATE TABLE tb_funcionarios (
id bigint auto_increment,
nome varchar(100),
departamento varchar(250),
data_nascimento date,
salario decimal,
primary key (id)
);

-- Inserindo dados na tabela
INSERT INTO tb_funcionarios (nome, departamento, data_nascimento, salario)
VALUES ("Amélia", "Administrativo", "1993-09-27", 2500.0);

INSERT INTO tb_funcionarios (nome, departamento, data_nascimento, salario)
VALUES ("Tatiana", "Financeiro", "1990-03-16", 3000.0);

INSERT INTO tb_funcionarios (nome, departamento, data_nascimento, salario)
VALUES ("Cristiano", "Recursos Humanos", "1980-02-05", 1900.0);

INSERT INTO tb_funcionarios (nome, departamento, data_nascimento, salario)
VALUES ("Rodolfo", "Operacional", "1997-10-15", 1670.0);

INSERT INTO tb_funcionarios (nome, departamento, data_nascimento, salario)
VALUES ("Cecília", "Administrativo", "1995-05-26", 3500.0);

-- Visualizando os dados da tabela
SELECT * FROM tb_funcionarios;

-- Visualizando funcionários com salário maior que 2000
SELECT * FROM tb_funcionarios WHERE salario > 2000.0;

-- Visualizando funcionários com salário menor que 2000
SELECT * FROM tb_funcionarios WHERE salario < 2000.0;

-- Adicionando atributo CPF
ALTER TABLE tb_funcionarios ADD cpf varchar(10);

-- Atualizando CPF dos funcionários
UPDATE tb_funcionarios SET cpf = 1234567891 WHERE id = 1;
UPDATE tb_funcionarios SET cpf = 9876543210 WHERE id = 2;
UPDATE tb_funcionarios SET cpf = 1546789542 WHERE id = 3;
UPDATE tb_funcionarios SET cpf = 4336978541 WHERE id = 4;
UPDATE tb_funcionarios SET cpf = 2165478952 WHERE id = 5;