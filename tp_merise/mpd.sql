-- Generated by Mocodo 4.1.2
CREATE DATABASE IF NOT EXISTS tp_merise;

USE tp_merise;

CREATE TABLE IF NOT EXISTS categorie (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS commande (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  order_id VARCHAR(100) NOT NULL,
  statut VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  utilisateur_id BIGINT UNSIGNED,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS contain (
  produit_id BIGINT UNSIGNED,
  order_id BIGINT UNSIGNED,
  PRIMARY KEY (produit_id, order_id)
);

CREATE TABLE IF NOT EXISTS etiquette (
  id     BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  name        VARCHAR(100),
  created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
  updated_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS avoir (
  produit_id BIGINT UNSIGNED,
  tag_id     BIGINT UNSIGNED,
  PRIMARY KEY (produit_id, tag_id)
);

CREATE TABLE IF NOT EXISTS produit (
  id  BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  name         VARCHAR(100),
  quantite     BIGINT(100),
  statut       BIGINT(100),
  created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
  updated_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  category_id BIGINT UNSIGNED,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS utilisateur (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  name            VARCHAR(100),
  mot_de_passe    VARCHAR(255),
  created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
  updated_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

ALTER TABLE commande ADD FOREIGN KEY (utilisateur_id) REFERENCES utilisateur (id);

ALTER TABLE contain ADD FOREIGN KEY (order_id) REFERENCES commande (id);
ALTER TABLE contain ADD FOREIGN KEY (produit_id) REFERENCES produit (id);

ALTER TABLE avoir ADD FOREIGN KEY (tag_id) REFERENCES etiquette (id);
ALTER TABLE avoir ADD FOREIGN KEY (produit_id) REFERENCES produit (id);

ALTER TABLE produit ADD FOREIGN KEY (category_id) REFERENCES categorie (id);