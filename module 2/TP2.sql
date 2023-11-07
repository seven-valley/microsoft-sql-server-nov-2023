-- creation base de donnees
/* commentaires */

--CREATE DATABASE entrepot;

USE entrepot;
GO
DROP TABLE produit;
GO
CREATE TABLE produit(
	id INT CONSTRAINT  pk_personne PRIMARY KEY IDENTITY(1,1),
	nom VARCHAR(100) not null,
	reference varchar(255) not null,
	CONSTRAINT un_produit UNIQUE (reference)
);
GO
INSERT INTO produit (nom,reference) VALUES('Boite','001');
INSERT INTO produit (nom,reference) VALUES('Boite 2','002');
GO
SELECT * from produit;


