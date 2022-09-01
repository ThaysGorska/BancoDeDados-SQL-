CREATE DATABASE db_escola;
USE db_escola;

-- Criando a tabela
CREATE TABLE tb_alunos(
id bigint auto_increment,
nome varchar(200),
cod_aluno bigint,
turma varchar(100),
data_nascimento date,
nota decimal,
primary key (id)
);

-- Alterando formato da nota
ALTER TABLE tb_alunos MODIFY nota decimal (5, 1);

-- Adicionando dados na tabela
INSERT INTO tb_alunos (nome, cod_aluno, turma, data_nascimento, nota)
VALUES ("Amanda Coutinho", 12351, "6MA", "2008-03-27", 8.1);

INSERT INTO tb_alunos (nome, cod_aluno, turma, data_nascimento, nota)
VALUES ("Helena Tavares", 46521, "7MA", "2007-04-15", 9.2);

INSERT INTO tb_alunos (nome, cod_aluno, turma, data_nascimento, nota)
VALUES ("Camila Nunes", 42361, "6MA", "2008-08-24", 6.0);

INSERT INTO tb_alunos (nome, cod_aluno, turma, data_nascimento, nota)
VALUES ("Leonardo Silva", 43128, "7MA", "2007-10-14", 5.0);

INSERT INTO tb_alunos (nome, cod_aluno, turma, data_nascimento, nota)
VALUES ("João Cândido", 32168, "6MA", "2008-12-25", 10.0);

INSERT INTO tb_alunos (nome, cod_aluno, turma, data_nascimento, nota)
VALUES ("Tiago Fernandes", 39874, "7MA", "2007-04-27", 7.1);

INSERT INTO tb_alunos (nome, cod_aluno, turma, data_nascimento, nota)
VALUES ("Mariana Martins", 12456, "6MA", "2008-06-16", 9.8);

INSERT INTO tb_alunos (nome, cod_aluno, turma, data_nascimento, nota)
VALUES ("Gregório Pena", 14521, "7MA", "2007-11-20", 6.1);

-- Mostrando dados da tabela
SELECT * FROM tb_alunos;

-- Mostrando alunos com nota maior e menor do que 7.0
SELECT * FROM tb_alunos WHERE nota < 7.0;
SELECT * FROM tb_alunos WHERE nota > 7.0;

-- Atualizando a nota da Camila Nunes
UPDATE tb_alunos SET nota = 8.5 WHERE id = 3;
