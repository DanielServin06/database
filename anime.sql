
CREATE DATABASE animespro CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE animes(
    ID_ANIME INT PRIMARY KEY AUTO_INCREMENT, 
    nombre CHAR(200), 
    nombre_prota CHAR(200)
);

INSERT INTO animes(nombre, nombre_prota) VALUES("Hellsing","Alucard"); 

SELECT * FROM animes WHERE nombre_prota="Alucard" AND nombre="Hellsing"; 
SELECT * FROM animes WHERE nombre_prota="Eren Yeager" AND nombre="Hellsing" AND ID_ANIME=1; 

INSERT INTO animes(nombre, nombre_prota) VALUES("Attack on Titan","Eren Yeager"); 

SELECT * FROM animes; 
SELECT nombre, nombre_prota FROM animes; 

ALTER TABLE animes ADD nombre_antagonista CHAR(200); 

UPDATE animes SET nombre_antagonista="Max Montana" WHERE ID_ANIME=1; 
UPDATE animes SET nombre_antagonista="Titanes" WHERE ID_ANIME=2; 

UPDATE animes SET nombre_antagonista="General"  WHERE nombre_antagonista="Max Montana"; 

DELETE FROM animes WHERE nombre_antagonista="General"; 

TRUNCATE animes; 

DROP DATABASE animespro; 


