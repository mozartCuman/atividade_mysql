CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(20) NOT NULL,
    responsavel VARCHAR(30),
    PRIMARY KEY(id)
);

SELECT * FROM tb_categorias;


CREATE TABLE tb_produtos (
	id_produtos BIGINT AUTO_INCREMENT,
		nome VARCHAR(20) NOT NULL,
        descricao VARCHAR(60),
        preco DECIMAL(6,2),
        peso DECIMAL(8,2),
        id_categoria BIGINT,
    PRIMARY KEY(id_produtos),
    FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_produtos;


-- Inserção categorias
INSERT INTO tb_categorias (tipo, responsavel)
	values(" Concretagem", "Arantes da Fonseca");
    
INSERT INTO tb_categorias (tipo, responsavel)
	values(" Aramado", "Ricardo Vanadium");
    
INSERT INTO tb_categorias (tipo, responsavel)
	values("Papelão", " Arantes da Fonseca");
    
INSERT INTO tb_categorias (tipo, responsavel)
	values("Pregos", "Olga da Silva");
    
INSERT INTO tb_categorias (tipo, responsavel)
	values("Tratores", "Olga da Silva");

    
SELECT * FROM tb_categorias;
    
-- Inserção produtos
INSERT INTO tb_produtos (nome, descricao, preco, peso, id_categoria)
	values ("Prego Vanadium", "Pontiagudo", 23, 1, 4);
    
INSERT INTO tb_produtos (nome, descricao, preco, peso, id_categoria)
	values ("Grade Carenagem", "Bem resistente", 320, 23, 5);
    
INSERT INTO tb_produtos (nome, descricao, preco, peso, id_categoria)
	values ("Reciclagem Papel", "Ira virar caderno ", 32, 256, 3);
    
INSERT INTO tb_produtos (nome, descricao, preco, peso, id_categoria)
	values ("Arame Galvanizado", "Mais resistente e enferruja menos", 60, 11, 2);
    
INSERT INTO tb_produtos (nome, descricao, preco, peso, id_categoria)
	values ("Fio Eletrico", "Aguentra alta voltagem", 93, 32, 2);
    
INSERT INTO tb_produtos (nome, descricao, preco, peso, id_categoria)
	values ("Parafuso aço", "Aguenta 93 Toneladas", 19, 0.50, 5);
    
INSERT INTO tb_produtos (nome, descricao, preco, peso, id_categoria)
	values ("Escudo Mache", "Uma para tratamento de temperatura predial e acustica", 46, 13, 3);
    
INSERT INTO tb_produtos (nome, descricao, preco, peso, id_categoria)
	values ("Cimento", "Confia que resiste", 60, 50, 2);
    
-- Seleções
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco > 50 AND preco < 150;

SELECT * FROM tb_produtos LEFT JOIN tb_categorias
	ON tb_produtos.id_categoria = tb_categorias.id; 
    
SELECT * FROM tb_produtos LEFT JOIN tb_categorias
	ON tb_produtos.id_categoria = tb_categorias.id WHERE tb_produtos.id_categoria = 2; 
