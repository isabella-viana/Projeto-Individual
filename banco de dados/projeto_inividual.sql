
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

CREATE TABLE emocoes (
    idEmocao INT AUTO_INCREMENT PRIMARY KEY,
    emocao VARCHAR(50) NOT NULL,
    intensidade INT NOT NULL,
    dataEmocao datetime default current_timestamp,
    fkUsuario INT,
    FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario)
);


select * from emocoes;

SELECT emocao, intensidade, DATE_FORMAT(dataEmocao, '%H:%i:%s') AS horario
    FROM emocoes
    WHERE fkUsuario = 1
    ORDER BY dataEmocao DESC
    LIMIT 10;

select * from usuario;

SELECT 
         emocao
        FROM emocoes ;
         
         SELECT 
         *
        FROM emocao
         order by created_at desc;
select *from usuario;

  DELETE FROM post WHERE idPost = 1;

SELECT 
    p.idPost, p.titulo, p.texto, p.dataPost, 
    u.nome, u.username, u.idUsuario AS fkUsuario
FROM post p
JOIN usuario u ON p.fkUsuario = u.idUsuario
ORDER BY p.dataPost DESC;

