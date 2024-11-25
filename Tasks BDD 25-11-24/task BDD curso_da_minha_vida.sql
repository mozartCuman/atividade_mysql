CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(20) NOT NULL,
    mesesCurso int,
    PRIMARY KEY(id)
);

SELECT * FROM tb_categorias;


CREATE TABLE tb_cursos (
	id_produtos BIGINT AUTO_INCREMENT,
		nome VARCHAR(20) NOT NULL,
        descricao VARCHAR(60),
        preco DECIMAL(6,2),
        horasPDia INT,
        id_categoria BIGINT,
    PRIMARY KEY(id_produtos),
    FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_cursos;


-- Inserção categorias
INSERT INTO tb_categorias (tipo, mesesCurso)
	values(" Tecnico", 18);
    
INSERT INTO tb_categorias (tipo, mesesCurso)
	values(" Renovação", 24);
    
INSERT INTO tb_categorias (tipo, mesesCurso)
	values(" Extensão", 12);
    
INSERT INTO tb_categorias (tipo, mesesCurso)
	values(" De Verão", 4);
    
INSERT INTO tb_categorias (tipo,mesesCurso)
	values(" BootCamp", 3);

    
SELECT * FROM tb_categorias;
    
-- Inserção produtos
INSERT INTO tb_cursos (nome, descricao, preco, horasPDia, id_categoria)
	values ("Marçal Empresas", "Curious", 2000, 2, 3);
    
INSERT INTO tb_cursos (nome, descricao, preco, horasPDia, id_categoria)
	values ("Informatica", "Bem resistente", 520, 2, 1);
    
INSERT INTO tb_cursos (nome, descricao, preco, horasPDia, id_categoria)
	values ("Matematica", " Alguns gostam", 940, 4, 4);
    
INSERT INTO tb_cursos (nome, descricao, preco, horasPDia, id_categoria)
	values ("Direito para provas", "É daqui para a OAB", 720, 4, 5);
    
INSERT INTO tb_cursos (nome, descricao, preco, horasPDia, id_categoria)
	values ("Apicultura 2031", "Zum Zum de abelha", 1110, 1, 2);
    
INSERT INTO tb_cursos (nome, descricao, preco, horasPDia, id_categoria)
	values ("Fotografia", "Os melhores closes é você quem tira", 999, 2, 1);
    
INSERT INTO tb_cursos (nome, descricao, preco, horasPDia, id_categoria)
	values ("Vitrine", "Pois todos gorstam de comprar", 550, 2, 4);
    
INSERT INTO tb_cursos (nome, descricao, preco, horasPDia, id_categoria)
	values ("Pilotagem para Kart", "Capota mas num breca", 6000, 2, 1);
    
SELECT * FROM tb_cursos;
    
-- Seleções

SELECT * FROM tb_cursos WHERE preco > 500;
SELECT * FROM tb_cursos WHERE preco > 600 AND preco < 1000;

SELECT * FROM tb_cursos LEFT JOIN tb_categorias
	ON tb_cursos.id_categoria = tb_categorias.id; 
    
SELECT * FROM tb_cursos LEFT JOIN tb_categorias
	ON tb_cursos.id_categoria = tb_categorias.id WHERE tb_cursos.id_categoria = 1; 
