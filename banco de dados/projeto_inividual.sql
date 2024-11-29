drop database if exists projeto_individual;
CREATE DATABASE projeto_individual;

USE  projeto_individual;

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(45),
    username VARCHAR(45),
	email VARCHAR(150),
	senha VARCHAR(50)
);
select * from usuario;

CREATE TABLE post (
  idPost INT PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(45),
  texto VARCHAR(500),
 dataPost TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  fkUsuario INT,
  FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario)
);


CREATE TABLE likes (
  idLikes INT AUTO_INCREMENT PRIMARY KEY, 
  fkPost INT NOT NULL, 
  fkUsuario INT NOT NULL, 
  FOREIGN KEY (fkPost) REFERENCES post(idPost), 
  FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario) 
);

CREATE TABLE emocoes (
    idEmocao INT AUTO_INCREMENT PRIMARY KEY,
    emocao VARCHAR(50) NOT NULL,
    intensidade INT NOT NULL,
    dataEmocao datetime default current_timestamp,
    fkUsuario INT,
    FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario)
);

select * from emocoes;

select * from usuario;

SELECT 
         emocao
        FROM emocoes ;
         
         SELECT 
         *
        FROM emocao
         order by created_at desc;
select *from usuario;

INSERT INTO post (titulo, texto, fkUsuario) VALUES ('Sexta Feira', 'Staburks', 1);	
  DELETE FROM post WHERE idPost = 1;


