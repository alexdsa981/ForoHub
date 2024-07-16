CREATE TABLE respuesta (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    mensaje TEXT NOT NULL,
    fechaCreacion DATETIME NOT NULL,
    solucion BOOLEAN NOT NULL,
    topico_id BIGINT,
    usuario_id BIGINT,
    FOREIGN KEY (topico_id) REFERENCES topico(id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);
