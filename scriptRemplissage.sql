
use sae;


insert into salle values (1, 'salleBienEtre1',10,false,'salle cabinet d’art thérapie ou de
sophrologie ou professionnels du bien-être'),
(2,'salleBienEtre2', 10,false, 'salle cabinet d’art thérapie ou de
sophrologie ou professionnels du bien-être'),
(3,'salle_1_plateau_1',15,true,'salle plateau'),
(4,'salle_2_plateau_1',15,true,'salle plateau'),
(5,'salle_1_plateau_2',15,false,'salle plateau'),
(6,'salle_2_plateau_2',15,false,'salle plateau'),
(7,'salle_Haut_Plafond',20,false,'salle avec un haut plafond pour cerceaux, tissus aériens');


insert into partenaire values (1,'Martin', 'work shop', '13 rue de la rivière ','Dijon'),
(2,'Jeanne', 'cours collectifs', '15 rue de la la montagne ','Paris'),
(3,'Nicolas', 'événementiel', '8 rue de la plaine ','Dijon'),
(4,'Sarah', 'cabinet', '3 rue de la forêt ','Auxerre'),
(5,'Antoine', 'cours collectifs', '2 rue des fleurs ','Besançon'),
(6,'Eloise', 'événementiel', '8 rue Georges Pompidou','Dijon'),
(7,'Léo', 'work shop', '3 avenue Carles de Gaulle ','Paris');



insert into reserver values(3,1,'2022-06-15 09:00:00', '2022-06-17 09:00:00',true),
(5,3,'2022-06-22 09:00:00', '2022-06-23 19:00:00',false),
(7,2,'2022-06-15 19:00:00', '2022-06-17 09:00:00',false),
(7,1,'2022-07-15 09:00:00', '2022-07-16 19:00:00',false), 
(1,2,'2022-06-23 09:00:00', '2022-06-25 19:00:00',false),
(2,4,'2022-06-15 12:00:00', '2022-06-17 22:00:00',false),
(4,4,'2022-07-01 12:00:00', '2022-07-02 18:00:00',true),
(6,1,'2022-07-07 12:00:00', '2022-07-08 12:00:00',false),
(3,2,'2022-07-03 12:00:00', '2022-07-04 18:00:00',true),
(1,5,'2022-07-03 18:00:00', '2022-07-04 12:00:00',false),
(3,6,'2022-07-13 18:00:00', '2022-07-14 18:00:00',false),
(4,7,'2022-07-03 9:00:00', '2022-07-04 18:00:00',true);


insert into catégorie_matériel_pro values (1,'tapis de yoga', 15, 3,5),
(2,'vélos', 50, 3,15),
(3,'poids', 20, 3,10),
(4,'cordes à sauter', 10, 3,5),
(5,'medecine ball', 15, 3,10),
(6,'cerceau', 10, 3,5),
(7,'tissus', 10,3,10);


insert into materielpro values(1,'tapis1',0,1),
(2,'tapis2',0,1),
(3,'tapis3',0,1),
(4,'vélo1',0,2),
(5,'vélo2',0,2),
(6,'vélo3',0,2),
(7,'corde1',0,4),
(8,'corde2',0,4),
(9,'corde3',0,4),
(10,'poid2',0,3),
(11,'poid3',0,3),
(12,'poid1',0,3),
(13,'medecineBall1',0,5),
(14,'medecineBall2',0,5),
(15,'medecineBall3',0,5),
(16,'cerceau1',0,6),
(17,'cerceau2',0,6),
(18,'cerceau3',0,6),
(19,'tissu1',0,7),
(20,'tissu2',0,7),
(21,'tissu3',0,7);

insert into categorieMaterielPerso values(1,'huge',15),
(2,'large',10),
(3,'small',5);



insert into matérielPerso values ( 1,1,3,'tapis'),
( 2,4,2,'poids'),
( 3,3,1,'rameur'),
( 4,2,2,'ballon'),
( 5,5,3,'codes à sauter'),
( 6,6,2,'step'),
( 7,7,3,'banc');



insert into louer values (1,7,'2022-06-15 9:00:00', '2022-06-15 18:00:00'),
(1,13,'2022-06-15 9:00:00', '2022-06-15 18:00:00'),
(1,14,'2022-06-15 9:00:00', '2022-06-15 18:00:00'),
(2,4,'2022-06-15 13:00:00', '2022-06-15 15:00:00'),
(2,10,'2022-06-15 13:00:00', '2022-06-15 15:00:00'),
(2,11,'2022-06-15 13:00:00', '2022-06-15 15:00:00'),
(3,2,'2022-06-22 9:00:00', '2022-06-22 18:00:00'),
(3,1,'2022-06-22 9:00:00', '2022-06-22 18:00:00'),
(3,3,'2022-06-22 9:00:00', '2022-06-22 18:00:00'),
(4,5,'2022-07-01 15:00:00', '2022-07-02 15:00:00'),
(4,8,'2022-07-01 15:00:00', '2022-07-02 15:00:00'),
(5,3,'2022-07-01 9:00:00', '2022-07-01 13:00:00'),
(5,16,'2022-07-01 9:00:00', '2022-07-01 13:00:00'),
(2,6,'2022-07-15 15:00:00', '2022-07-15 19:00:00'),
(6,2,'2022-07-01 11:00:00', '2022-07-01 15:00:00'),
(2,5,'2022-07-05 15:00:00', '2022-07-05 20:00:00'),
(1,16,'2022-07-15 09:00:00', '2022-07-15 15:00:00'),
(2,17,'2022-07-25 10:00:00', '2022-07-25 15:00:00');


update materielpro set nbUtilisations = nbUtilisations+9 where id_Materiel_Pro = 7 or id_Materiel_Pro = 13 or id_Materiel_Pro = 14 or id_Materiel_Pro = 2 or id_Materiel_Pro = 3 or id_Materiel_Pro = 1;
update materielpro set nbUtilisations =  nbUtilisations +2 where id_Materiel_Pro =11 or id_Materiel_Pro = 4 or id_Materiel_Pro = 10;
update materielpro set nbUtilisations =  nbUtilisations +24 where id_Materiel_Pro =5 or id_Materiel_Pro = 8;
update materielpro set nbUtilisations = nbUtilisations+4 where id_Materiel_Pro = 3  or id_Materiel_Pro =16 or id_Materiel_Pro = 6 or id_Materiel_Pro = 2;
update materielpro set nbUtilisations = nbUtilisations+5 where id_Materiel_Pro = 5;
update materielpro set nbUtilisations = nbUtilisations+6 where id_Materiel_Pro = 16 or id_Materiel_Pro = 17;



insert into stocker values (1,2,'2022-06-10 18:00:00','2022-06-17 18:00:00'),
(2,3,'2022-06-20 18:00:00','2022-06-23 18:00:00'),
(3,4,'2022-07-10 18:00:00','2022-07-17 15:00:00'),
(2,2,'2022-07-10 18:00:00','2022-07-17 15:00:00'),
(7,5,'2022-07-04 15:00:00','2022-07-06 22:00:00'),
(5,7,'2022-07-15 15:00:00','2022-07-22 22:00:00');

insert into agentEntretien values (1,15),
(2,15);

insert into nettoyer values (1,1,'2022-06-26 09:00','2022-06-26 12:00'),
(2,1,'2022-06-18 09:00','2022-06-26 12:00'),
(3,2,'2022-07-15 09:00','2022-07-15 12:00'),
(4,2,'2022-07-05 09:00','2022-07-05 12:00'),
(5,2,'2022-06-24 09:00','2022-06-24 12:00');





