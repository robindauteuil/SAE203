create schema if not exists Sae;
use sae;

CREATE TABLE Salle(
   id_Salle INT,
   nom VARCHAR(50),
   prix INT NOT NULL,
   cuisine boolean,
   spécificité VARCHAR(255),
   PRIMARY KEY(id_Salle)
);

CREATE TABLE partenaire(
   id_Partenaire INT,
   nom VARCHAR(50),
   catégorie VARCHAR(50) NOT NULL,
   adresse VARCHAR(50),
   ville varchar(255),
   PRIMARY KEY(id_Partenaire),
   constraint chck_cat check ( catégorie = 'work shop' or catégorie = 'cours collectifs' or catégorie = 'événementiel' or catégorie = 'cabinet')
);
create table categorieMaterielPerso(
idCategorieMaterielPerso integer primary key,
 taille varchar(25),
 prix integer);
 
 CREATE TABLE agentEntretien(
   idAgent INT,
   salaire INT NOT NULL,
   PRIMARY KEY(idAgent)
);


CREATE TABLE matérielPerso(
   id_Materiel_Perso INT,
   id_Partenaire INT NOT NULL,
   idCategorieMaterielPerso int not null,
   nom varchar(100),
   PRIMARY KEY(id_Materiel_Perso),
   FOREIGN KEY(id_Partenaire) REFERENCES partenaire(id_Partenaire),
   FOREIGN KEY(idCategorieMaterielPerso) REFERENCES CategorieMaterielPerso(idCategorieMaterielPerso)
  
);

CREATE TABLE catégorie_matériel_pro(
   id_CAT_MATERIEL INT,
   nom VARCHAR(100) NOT NULL,
   nb_utilisationsMax VARCHAR(50) NOT NULL,
   effectifs INT,
   prix INT NOT NULL,
   PRIMARY KEY(id_CAT_MATERIEL)
);


CREATE TABLE materielPro(
   id_Materiel_Pro INT,
   nom VARCHAR(50),
   nbUtilisations INT NOT NULL,
   id_CAT_MATERIEL INT NOT NULL,
   PRIMARY KEY(id_Materiel_Pro),
   FOREIGN KEY(id_CAT_MATERIEL) REFERENCES catégorie_matériel_pro(id_CAT_MATERIEL)
);


CREATE TABLE louer(
   id_Partenaire INT,
   id_Materiel_Pro INT,
   dateDebut DATEtime NOT NULL,
   DateFin DATEtime NOT NULL,
   PRIMARY KEY(id_Partenaire, id_Materiel_Pro),
   FOREIGN KEY(id_Partenaire) REFERENCES partenaire(id_Partenaire),
   FOREIGN KEY(id_Materiel_Pro) REFERENCES materielPro(id_Materiel_Pro)
);

CREATE TABLE stocker(
   id_Salle INT,
   id_Materiel_Perso INT,
   dateDebut DATEtime,
   dateFin DATEtime,
   PRIMARY KEY(id_Salle, id_Materiel_Perso),
   FOREIGN KEY(id_Salle) REFERENCES Salle(id_Salle),
   FOREIGN KEY(id_Materiel_Perso) REFERENCES matérielPerso(id_Materiel_Perso)
);

CREATE TABLE reserver(
   id_Salle INT,
   id_Partenaire INT,
   dateDebut DATETIME NOT NULL,
   dateFin DATETIME,
   cuisine boolean NOT NULL,
   PRIMARY KEY(id_Salle, id_Partenaire),
   FOREIGN KEY(id_Salle) REFERENCES Salle(id_Salle),
   FOREIGN KEY(id_Partenaire) REFERENCES partenaire(id_Partenaire)
);

CREATE TABLE nettoyer(
   id_Salle INT,
   idAgent INT,
   dateDebutNettoyage DATETIME NOT NULL,
   dateFinNettoyage DATETIME NOT NULL,
   PRIMARY KEY(id_Salle, idAgent),
   FOREIGN KEY(id_Salle) REFERENCES Salle(id_Salle),
   FOREIGN KEY(idAgent) REFERENCES agentEntretien(idAgent)
);
