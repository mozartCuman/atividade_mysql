CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
	id_categorias BIGINT AUTO_INCREMENT,
		tipo VARCHAR(20) NOT NULL,
        descontoMelhorIdade BOOLEAN,
    PRIMARY KEY(id_categorias)
);

SELECT * FROM tb_categorias;


CREATE TABLE tb_produtos (
	id_produtos BIGINT AUTO_INCREMENT,
		nome VARCHAR(20) NOT NULL,
        valor DECIMAL(6,2),
        id_categoria BIGINT,
    PRIMARY KEY(id_produtos),
    FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id_categorias)
);

SELECT * FROM tb_produtos;


-- Inserção categorias
INSERT INTO tb_categorias (tipo, descontoMelhorIdade)
	values("GENERICO", TRUE);
    
INSERT INTO tb_categorias (tipo, descontoMelhorIdade)
	values("GENERICO", FALSE);
    
INSERT INTO tb_categorias (tipo, descontoMelhorIdade)
	values("Guia Branca", TRUE);
    
INSERT INTO tb_categorias (tipo, descontoMelhorIdade)
	values("Guia Branca", FALSE);
    
INSERT INTO tb_categorias (tipo, descontoMelhorIdade)
	values("Guia Amarela", TRUE);

INSERT INTO tb_categorias (tipo, descontoMelhorIdade)
	values("Guia Amarela", FALSE);
    
SELECT * FROM tb_categorias;
    
-- Inserção produtos
INSERT INTO tb_produtos (nome, valor, id_categoria)
	values ("Glorso", 99.99, 1);
    
INSERT INTO tb_produtos (nome, valor, id_categoria)
	values ("Broncotubercocura", 43.29, 4);
    
INSERT INTO tb_produtos (nome, valor, id_categoria)
	values ("Small Heal Potion", 11.11, 2);
    
INSERT INTO tb_produtos (nome, valor, id_categoria)
	values ("Hyper Heal", 44.23, 3);
    
INSERT INTO tb_produtos (nome, valor, id_categoria)
	values ("Large Heal Potion", 20.10, 5);
    
INSERT INTO tb_produtos (nome, valor, id_categoria)
	values ("Saint Nectar", 999.99, 6);
    
INSERT INTO tb_produtos (nome, valor, id_categoria)
	values ("Peach Manjar", 78, 2);
    
INSERT INTO tb_produtos (nome, valor, id_categoria)
	values ("Crazy Leaf", 7.99, 1);
    
-- Seleções
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 50;
SELECT * FROM tb_produtos WHERE valor > 5 AND valor < 60;

SELECT * FROM tb_produtos LEFT JOIN tb_categorias
	ON tb_produtos.id_categoria = tb_categorias.id_categorias; 
    
SELECT * FROM tb_produtos LEFT JOIN tb_categorias
	ON tb_produtos.id_categoria = tb_categorias.id_categorias WHERE tb_produtos.id_categoria = 1; 

