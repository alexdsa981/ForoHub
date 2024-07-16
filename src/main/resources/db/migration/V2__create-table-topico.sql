CREATE TABLE topico (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    mensaje TEXT NOT NULL,
    fechaCreacion DATE NOT NULL,
    status BOOLEAN NOT NULL,
    autor_id BIGINT,
    FOREIGN KEY (autor_id) REFERENCES usuario(id)
);