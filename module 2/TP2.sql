-- creation base de donnees
/* commentaires */

--CREATE DATABASE salade;

USE salade;
GO
DROP TABLE fruit;
DROP TABLE couleur;
CREATE TABLE [couleur] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [nom] varchar(255) NOT NULL
)
GO

CREATE TABLE [fruit] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [nom] varchar(255) NOT NULL,
  [couleur_id] int
)
GO

ALTER TABLE [fruit] ADD FOREIGN KEY ([couleur_id]) REFERENCES [couleur] ([id])
GO

INSERT INTO couleur (nom)VALUES ('rouge');
INSERT INTO couleur (nom)VALUES ('vert');
INSERT INTO couleur (nom)VALUES ('bleu');

INSERT INTO fruit (nom,couleur_id)VALUES ('pomme',1);
INSERT INTO fruit (nom,couleur_id)VALUES ('poire',2);
INSERT INTO fruit (nom)VALUES ('cerise');
GO
--SELECT * from fruit;
--SELECT * from couleur;
SELECT * FROM fruit
INNER JOIN  couleur ON fruit.couleur_id = couleur.id;
SELECT * FROM fruit
LEFT JOIN  couleur ON fruit.couleur_id = couleur.id;
