CREATE DATABASE projeto_individual;

USE  projeto_individual;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE post (
	idPost INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

CREATE TABLE comentarios (
  idComentarios INT AUTO_INCREMENT PRIMARY KEY, 
  fkPost INT NOT NULL, 
  fkUsuario INT NOT NULL, 
  comentario varchar(300) NOT NULL, 
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
  FOREIGN KEY (fkPost) REFERENCES post(idPost), 
  FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario) 
);
CREATE TABLE likes (
  idLikes INT AUTO_INCREMENT PRIMARY KEY, 
  fkPost INT NOT NULL, 
  fkUsuario INT NOT NULL, 
  FOREIGN KEY (fkPost) REFERENCES post(idPost), 
  FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario) 
);


/* esta tabela deve estar de acordo com o que está em INSERT de sua API do arduino - dat-acqu-ino */
CREATE TABLE emocao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    emocao VARCHAR(50) NOT NULL,
    intensidade INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fk_usuario INT,
    FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);





