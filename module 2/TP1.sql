-- creation base de donnees
/* commentaires */

CREATE DATABASE bibli;
/*
USE entreprise;
GO
DROP TABLE employe;
GO
CREATE TABLE employe(
	id INT CONSTRAINT  pk_personne PRIMARY KEY IDENTITY(1,1),
	nom VARCHAR(100) not null,
	prenom VARCHAR(100) not null,
	salaire float null CONSTRAINT df_employe_salaire DEFAULT 0,
	CONSTRAINT ck_employe_salaire CHECK (salaire >= 0)
);
GO
INSERT INTO employe (prenom,nom) VALUES('Brad','PITT');
INSERT INTO employe (prenom,nom,salaire) VALUES('Nicolas','CAGE',2000);
INSERT INTO employe (prenom,nom,salaire) VALUES('KONE','Moumine',100000);

GO
SELECT * from employe;
*/
