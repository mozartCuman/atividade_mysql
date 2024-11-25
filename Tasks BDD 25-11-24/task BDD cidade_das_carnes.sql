CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(20) NOT NULL,
    proveniencia VARCHAR(20) NOT NULL,
    PRIMARY KEY(id)
);

SELECT * FROM tb_categorias;


CREATE TABLE tb_produtos (
	id_produtos BIGINT AUTO_INCREMENT,
		nome VARCHAR(20) NOT NULL,
        descricao VARCHAR(60),
        preco DECIMAL(6,2),
        refrigerado BOOLEAN,
        id_categoria BIGINT,
    PRIMARY KEY(id_produtos),
    FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_produtos;


-- Inserção categorias
INSERT INTO tb_categorias (tipo, proveniencia)
	values(" Carne bovina", "Fazenda Cesar");
    
INSERT INTO tb_categorias (tipo, proveniencia)
	values(" Carne de frango", "Hortencia Oralina");
    
INSERT INTO tb_categorias (tipo, proveniencia)
	values("Vegetal", "Itadakmasu Plants");
    
INSERT INTO tb_categorias (tipo, proveniencia)
	values("Vegano", "Hortencia Oralina");
    
INSERT INTO tb_categorias (tipo, proveniencia)
	values("Rosas rosas", "Teresópolis Flores");

    
SELECT * FROM tb_categorias;
    
-- Inserção produtos
INSERT INTO tb_produtos (nome, descricao, preco, refrigerado, id_categoria)
	values ("Bola na Pá", "Carnesona ", 32, TRUE, 1);
    
INSERT INTO tb_produtos (nome, descricao, preco, refrigerado, id_categoria)
	values ("Asinha", "Excelente quando grelhada apimentada", 22, TRUE, 2);
    
INSERT INTO tb_produtos (nome, descricao, preco, refrigerado, id_categoria)
	values ("Raiz Forte", "Arde que só", 72, TRUE, 3);
    
INSERT INTO tb_produtos (nome, descricao, preco, refrigerado, id_categoria)
	values ("Saladinha Ceasar", "Todos gostam", 45, FALSE, 3);
    
INSERT INTO tb_produtos (nome, descricao, preco, refrigerado, id_categoria)
	values ("Lasanha de Soja", "Quem gosta gosta", 320, TRUE, 4);
    
INSERT INTO tb_produtos (nome, descricao, preco, refrigerado, id_categoria)
	values ("Red Velvet", " Cheirosas", 600.46, False, 5);
    
INSERT INTO tb_produtos (nome, descricao, preco, refrigerado, id_categoria)
	values ("Cupim", " Suculento", 36, True, 1);
    
INSERT INTO tb_produtos (nome, descricao, preco, refrigerado, id_categoria)
	values ("Coxinhas", "Assada com batata gosto", 27, TRUE, 2);
    
-- Seleções
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco > 50 AND preco < 150;

SELECT * FROM tb_produtos RIGHT JOIN tb_categorias
	ON tb_produtos.id_categoria = tb_categorias.id; 
    
SELECT * FROM tb_produtos RIGHT JOIN tb_categorias
	ON tb_produtos.id_categoria = tb_categorias.id WHERE tb_produtos.id_categoria = 1; 
