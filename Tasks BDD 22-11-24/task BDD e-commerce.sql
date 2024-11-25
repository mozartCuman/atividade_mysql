CREATE DATABASE db_eCommerce;

USE db_eCommerce;

CREATE TABLE tb_produtos(
	id_produtos BIGINT AUTO_INCREMENT,
	nome VARCHAR(55) NOT NULL,
    descricao VARCHAR(200),
    precoCompra DECIMAL(8,2) NOT NULL,
    precoVenda DECIMAL(8,2) NOT NULL,
    estoque INT,
    PRIMARY KEY(id_produtos)
)

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, descricao, precoCompra, precoVenda, estoque) 
	values ("Brinco de Prata com Onix", "Brilhante e profundo", 123.9, 254.81, 12);
    
INSERT INTO tb_produtos(nome, descricao, precoCompra, precoVenda, estoque) 
	values ("Brinco de Titanio com Ouro Branco", "Mais que tradicional", 1230, 3122.99, 3);

INSERT INTO tb_produtos(nome, descricao, precoCompra, precoVenda, estoque) 
	values ("Colar de Prata com Onix", "Prateado", 350.99, 499.99, 11);

INSERT INTO tb_produtos(nome, descricao, precoCompra, precoVenda, estoque) 
	values ("Colar Titaneo", "1 quilo de  resistencia", 4000, 12100, 3);
    
INSERT INTO tb_produtos(nome, descricao, precoCompra, precoVenda, estoque) 
	values ("Anel de Prata", "Tamanho único", 20, 37, 72);

INSERT INTO tb_produtos(nome, descricao, precoCompra, precoVenda, estoque) 
	values ("Anel de Onix", "Super preto", 40, 90.99, 30);

INSERT INTO tb_produtos(nome, descricao, precoCompra, precoVenda, estoque) 
	values ("Aliança de ouro 24k", "Sextavada", 1100, 3100, 2);

INSERT INTO tb_produtos(nome, descricao, precoCompra, precoVenda, estoque) 
	values ("Anel de Coco", "Bom para noivado", 2.99, 10.99, 100);
    
SELECT * FROM tb_produtos WHERE precoVenda > 500;

SELECT * FROM tb_produtos WHERE precoVenda < 500;

SELECT * FROM tb_produtos;