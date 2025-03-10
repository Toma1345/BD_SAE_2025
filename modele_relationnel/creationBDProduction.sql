-- Création de la base de données PRODUCTION
CREATE DATABASE PRODUCTION;

-- Utilisation de la base de données PRODUCTION
USE PRODUCTION;

-- Création de la table PIECES
CREATE TABLE PIECES (
    piece_id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    description TEXT,
    prix_unitaire DECIMAL(10, 2) NOT NULL
);

-- Création de la table COMPOSER pour les pièces composées
CREATE TABLE COMPOSER (
    composee_id INT PRIMARY KEY AUTO_INCREMENT,
    piece_id INT NOT NULL,
    composant_id INT NOT NULL,
    quantite INT NOT NULL,
    FOREIGN KEY (piece_id) REFERENCES PIECES(piece_id),
    FOREIGN KEY (composant_id) REFERENCES PIECES(piece_id)
);