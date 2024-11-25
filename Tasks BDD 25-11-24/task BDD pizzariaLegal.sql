CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;


CREATE TABLE tb_categorias(
	id_categorias BIGINT AUTO_INCREMENT,
    diasMaiorVenda VARCHAR(100),
    diasMenorVenda VARCHAR(100),
    nivelConsumo0to10 INT,
    PRIMARY KEY (id_categorias)
);

SELECT * FROM tb_categorias;


CREATE TABLE tb_pizzas(
	id_pizzas BIGINT AUTO_INCREMENT,
	nome VARCHAR(20),
	valor decimal(6,2) NOT NULL,
    adicionais VARCHAR(20),
    id_categoria BIGINT,
    PRIMARY KEY (id_pizzas),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categorias)
);

SELECT * FROM tb_pizzas;

-- Inserção de categorias
INSERT INTO tb_categorias(diasMaiorVenda, diasMenorVenda, nivelConsumo0to10)
	VALUES(" TER, QUA, DOM", "SEG, SEX, SAB", 6);
    
INSERT INTO tb_categorias(diasMaiorVenda, diasMenorVenda, nivelConsumo0to10)
	VALUES(" TER, SEG , DOM", "QUA, SEX, SAB", 8);
    
INSERT INTO tb_categorias(diasMaiorVenda, diasMenorVenda, nivelConsumo0to10)
	VALUES(" SAB, SEX, DOM", "SEG, QUAR, TER", 10);
    
INSERT INTO tb_categorias(diasMaiorVenda, diasMenorVenda, nivelConsumo0to10)
	VALUES(" TER, QUA", "SEG, SEX, SAB", 2);
    
INSERT INTO tb_categorias(diasMaiorVenda, diasMenorVenda, nivelConsumo0to10)
	VALUES(" TER, QUA, DOM", "SEG, SEX, SAB", 1);
    
SELECT * FROM tb_categorias;

-- Inserção de pizzas
INSERT INTO tb_pizzas(nome, valor, adicionais, id_categoria)
	VALUES(" Calabresa", 72, "Sem adicionais", 3);

INSERT INTO tb_pizzas(nome, valor, adicionais, id_categoria)
	VALUES(" Indiana", 83, "Tomate", 4);
    
INSERT INTO tb_pizzas(nome, valor, adicionais, id_categoria)
	VALUES(" Abanoff", 113, "Beterraba", 5);
    
INSERT INTO tb_pizzas(nome, valor, adicionais, id_categoria)
	VALUES(" Portuguesa", 69, "Azeite", 1);
    
INSERT INTO tb_pizzas(nome, valor, adicionais, id_categoria)
	VALUES(" Chocolate", 70.32, "M&M", 2);
    
INSERT INTO tb_pizzas(nome, valor, adicionais, id_categoria)
	VALUES(" Super Freak", 230.99, "TUDO E TODOS", 1);

INSERT INTO tb_pizzas(nome, valor, adicionais, id_categoria)
	VALUES(" Rucula", 70, "Sem adicionais", 4);

INSERT INTO tb_pizzas(nome, valor, adicionais, id_categoria)
	VALUES(" Marguerita", 72, "Sem adicionais", 3);
    
INSERT INTO tb_pizzas(nome, valor, adicionais, id_categoria)
	VALUES(" Mandioquinha", 32, "Sem adicionais", 4);
    
INSERT INTO tb_pizzas(nome, valor, adicionais, id_categoria)
	VALUES(" Condominio", 48, "Sem adicionais", 2);
    
SELECT * FROM tb_pizzas;

-- Seleções de teste
SELECT * FROM tb_pizzas WHERE valor > 45;
SELECT * FROM tb_pizzas WHERE valor > 50 AND valor < 100;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%' or '%m%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
	ON tb_pizzas.id_categoria = tb_categorias.id_categorias;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
	ON tb_pizzas.id_categoria = tb_categorias.id_categorias WHERE tb_pizzas.id_categoria = 3 ;


