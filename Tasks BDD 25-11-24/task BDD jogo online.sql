CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;


CREATE TABLE tb_personagens (
	id_personagem BIGINT AUTO_INCREMENT,
	nome VARCHAR(20) NOT NULL UNIQUE,
	classe VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_personagem)    
);

SELECT * FROM tb_personagens;


CREATE TABLE tb_classes(
	id_classes BIGINT AUTO_INCREMENT,
	nomeClasse VARCHAR(20) NOT NULL UNIQUE,
	nivelClasse VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_classes)    
);

SELECT * FROM tb_classes;

-- Adição de atributos na tabela Personagens 
ALTER TABLE tb_personagens DROP COLUMN classe;
ALTER TABLE tb_personagens ADD nivelPersonagens INT;
ALTER TABLE tb_personagens ADD descricaoPersonagens VARCHAR(200);
ALTER TABLE tb_personagens ADD id_classe BIGINT NOT NULL;
ALTER TABLE tb_personagens ADD poderDeDefesa INT;
ALTER TABLE tb_personagens ADD poderDeAtaque INT;

ALTER TABLE tb_personagens ADD FOREIGN KEY(id_classe) REFERENCES tb_classes(id_classes);

SELECT * FROM tb_personagens;

-- Adição e analise da tabela Classes
ALTER TABLE tb_classes ADD descricaoClasse VARCHAR(200);

SELECT * FROM tb_classes;

-- Incerções na tabela Classes
INSERT INTO tb_classes (nomeClasse, nivelClasse, descricaoClasse) 
	values ("Arquearia", 10, " Acerta os objetivos de longe");
    
INSERT INTO tb_classes (nomeClasse, nivelClasse, descricaoClasse) 
	values ("Guerra", 5, " Manipula o campo de batalha desde que tenha noção");

INSERT INTO tb_classes (nomeClasse, nivelClasse, descricaoClasse) 
	values ("Mistico", 15, " Interage com ass leis da natureza");

INSERT INTO tb_classes (nomeClasse, nivelClasse, descricaoClasse) 
	values ("Bruxo", 10, " Estudioso que pode ser tambem GUERRA assim facilitando o tabuleiro");

INSERT INTO tb_classes (nomeClasse, nivelClasse, descricaoClasse) 
	VALUES ("Aphotecary", 20, " Curandeiro nivelador");

SELECT * FROM tb_classes;

-- Inserções de personagens
INSERT INTO tb_personagens (nome, nivelPersonagens, descricaoPersonagens, id_classe, poderDeDefesa, poderDeAtaque)
	VALUES ("Agnaldo", 11, " Esperto e cantor", 1, 1000, 7000);
    
INSERT INTO tb_personagens (nome, nivelPersonagens, descricaoPersonagens, id_classe, poderDeDefesa, poderDeAtaque)
	VALUES ("Mavis", 72, " A cura do desespero", 5, 17000, 4000);
    
INSERT INTO tb_personagens (nome, nivelPersonagens, descricaoPersonagens, id_classe, poderDeDefesa, poderDeAtaque)
	VALUES ("Monique", 5, " Curte GO", 2, 990, 1000);
    
INSERT INTO tb_personagens (nome, nivelPersonagens, descricaoPersonagens, id_classe, poderDeDefesa, poderDeAtaque)
	VALUES ("Alvo Aro", 19, " BLACKJACK GUY", 3, 2000, 1200);
    
INSERT INTO tb_personagens (nome, nivelPersonagens, descricaoPersonagens, id_classe, poderDeDefesa, poderDeAtaque)
	VALUES ("Mostrid", 11, " Instigador", 4, 3000, 1000);
    
INSERT INTO tb_personagens (nome, nivelPersonagens, descricaoPersonagens, id_classe, poderDeDefesa, poderDeAtaque)
	VALUES (" Descobirobaldo", 61, " Hobin Hood", 1, 500, 91000);
    
INSERT INTO tb_personagens (nome, nivelPersonagens, descricaoPersonagens, id_classe, poderDeDefesa, poderDeAtaque)
	VALUES ("Timoteo", 14, " Espreitador", 4, 7000, 1000);
    
INSERT INTO tb_personagens (nome, nivelPersonagens, descricaoPersonagens, id_classe, poderDeDefesa, poderDeAtaque)
	VALUES ("Megas-XLR", 92, " Eu me amarro no robo gigante", 1, 20000, 20000);

SELECT * FROM tb_personagens;

-- Interações finais requisitadas na task
SELECT nome, poderDeAtaque FROM tb_personagens WHERE poderDeAtaque > 2000;
SELECT nome, poderDeDefesa FROM tb_personagens WHERE poderDeDefesa > 1000 AND poderDeDefesa < 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%c%' OR '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes 
	ON tb_personagens.id_classe = tb_classes.id_classes;
    
SELECT * FROM tb_personagens INNER JOIN tb_classes 
	ON tb_personagens.id_classe = tb_classes.id_classes WHERE tb_personagens.id_classe = 1;
