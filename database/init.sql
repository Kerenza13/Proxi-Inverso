CREATE DATABASE IF NOT EXISTS RECUC_BD;
USE RECUC_BD;

CREATE TABLE secretosRECUC (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fraseRECUC VARCHAR(255) NOT NULL
);

INSERT INTO secretosRECUC (fraseRECUC) VALUES ('La base de datos responde, buenos días Carlos Morillas Delgado');
