CREATE DATABASE IF NOT EXISTS gestion_produits;

CREATE USER IF NOT EXISTS 'appuser'@'10.2.1.4' IDENTIFIED BY 'VOTRE_MOT_DE_PASSE';
GRANT ALL PRIVILEGES ON gestion_produits.* TO 'appuser'@'10.2.1.4';
FLUSH PRIVILEGES;

USE gestion_produits;

CREATE TABLE IF NOT EXISTS produits (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100) NOT NULL,
  description VARCHAR(255),
  prix DECIMAL(10,2) NOT NULL,
  categorie VARCHAR(50)
);

INSERT INTO produits (nom, description, prix, categorie) VALUES
('Ordinateur portable', 'PC 15 pouces, 16 Go RAM', 2500.00, 'Informatique'),
('Souris sans fil', 'Souris ergonomique Bluetooth', 45.00, 'Accessoires'),
('Ecran 24 pouces', 'Ecran Full HD IPS', 650.00, 'Informatique'),

SELECT * FROM produits;
