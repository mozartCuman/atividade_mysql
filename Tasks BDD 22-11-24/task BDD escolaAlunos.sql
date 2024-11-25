CREATE DATABASE db_registroEscola;

USE db_registroEscola;

CREATE TABLE tb_alunos(
	id_alunos BIGINT AUTO_INCREMENT,
	nome VARCHAR(55) NOT NULL UNIQUE,
    mediaNotas DECIMAL(4,2) NOT NULL,
    dataMatricula DATE NOT NULL,
    classe VARCHAR (20),
    nomeMae VARCHAR (55),
    PRIMARY KEY(id_alunos)
)

SELECT * FROM tb_alunos;

INSERT INTO tb_alunos(nome, mediaNotas, dataMatricula, classe, nomeMae) 
	values ("Titus Abrasax", 8, "2022-10-08", "Classe - B", "Matrice Abrasax");

INSERT INTO tb_alunos(nome, mediaNotas, dataMatricula, classe, nomeMae) 
	values ("Sullivan Monster", 5, "2022-10-10", "Classe - A", "Kaiju Monster");
    
INSERT INTO tb_alunos(nome, mediaNotas, dataMatricula, classe, nomeMae) 
	values ("Melkor Morgoth", 10, "2022-10-06", "Classe - A", "Illane Valaris");


INSERT INTO tb_alunos(nome, mediaNotas, dataMatricula, classe, nomeMae) 
	values ("Inu Pearl", 4, "2022-10-13", "Classe - B", "Adana Pearl");
    

INSERT INTO tb_alunos(nome, mediaNotas, dataMatricula, classe, nomeMae) 
	values ("Sechumaru Akainu", 9, "2022-10-19", "Classe - A", "Inuyasha Akainu");
    

INSERT INTO tb_alunos(nome, mediaNotas, dataMatricula, classe, nomeMae) 
	values ("Gohan Earth", 10, "2022-10-02", "Classe - B", "Titi Cutelo");
    

INSERT INTO tb_alunos(nome, mediaNotas, dataMatricula, classe, nomeMae) 
	values ("Pan Cutelo Earth", 3, "2022-10-08", "Classe - A", "Videl e Miguel");
    

INSERT INTO tb_alunos(nome, mediaNotas, dataMatricula, classe, nomeMae) 
	values ("Rock Lee", 1, "2022-11-01", "Classe - B", "Maito Guy");
    
SELECT * FROM tb_alunos WHERE mediaNotas > 7;

SELECT * FROM tb_alunos WHERE mediaNotas < 7;

SELECT * FROM tb_alunos WHERE classe LIKE '%- A%';
SELECT * FROM tb_alunos WHERE classe LIKE '%- B%';

SELECT * FROM tb_alunos;