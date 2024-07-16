CREATE TABLE usuario (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    correoElectronico VARCHAR(255) NOT NULL,
    contraseña VARCHAR(255) NOT NULL
);