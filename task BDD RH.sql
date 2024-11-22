CREATE DATABASE db_relacoesHumanas;

USE db_relacoesHumanas;

CREATE TABLE tb_colaboradores(
	id_colaboradores BIGINT AUTO_INCREMENT,
	nome VARCHAR(25) NOT NULL UNIQUE,
    setor VARCHAR(25) NOT NULL,
    salario DECIMAL(6,2) NOT NULL,
    dataDeIngresso DATE,
    valeRefeicao DECIMAL(5,2),
    PRIMARY KEY(id_colaboradores)
)

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome, setor, salario, dataDeIngresso, valeRefeicao) 
	values ("Rodrigo Stevan", "DBA", 8900.32, "2015-07-12", 900.15);
    
INSERT INTO tb_colaboradores(nome, setor, salario, dataDeIngresso, valeRefeicao) 
	values ("Adamastor Lauriel", "Treinee", 1800.39, "2024-08-01", 400.10);

INSERT INTO tb_colaboradores(nome, setor, salario, dataDeIngresso, valeRefeicao) 
	values ("Anna Silva", "Senior Dev", 9900.11, "2010-02-09", 950.50);
    
INSERT INTO tb_colaboradores(nome, setor, salario, dataDeIngresso, valeRefeicao) 
	values ("Ivna Kropov", "Treinne", 1850.11, "2023-011-30", 420.30);
    
INSERT INTO tb_colaboradores(nome, setor, salario, dataDeIngresso, valeRefeicao) 
	values ("Thaina Albuquerque", "DEV Plen", 7730.41, "2020-01-10", 620.30);
    
SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores set setor = "DEV Jun", salario = 5821.70, valeRefeicao = 510 WHERE id_colaboradores = 4;

SELECT * FROM tb_colaboradores;