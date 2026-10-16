-- plats
Create table plats(
    id SERIAL primary key,
    nom varchar(100) NOT NULL,
    prix INTEGER NOT NULL
);

-- new table cetegorie
Create table categorie(
    id SERIAL primary key,
    nom varchar(100) NOT NULL
);

-- manisy foreign key amle constraint :
alter table plats
add COLUMN categorie_id INTEGER,
add constraint fk_plat_categorie foreign key (categorie_id) references categorie(id); 

-- insert categorie :
insert into categorie(nom) values('Plat malagasy'),('Plat chinois'),('Soupe'),('Dessert et gouter'),('Boisson');

-- update plat avec categorie :
-- 1. Catégorie : Plat malagasy (ID = 1)
UPDATE plats SET categorie_id = 1 WHERE nom = 'Romazava';
UPDATE plats SET categorie_id = 1 WHERE nom = 'Ravitoto sy henakisoa';
UPDATE plats SET categorie_id = 1 WHERE nom = 'Akoho sy voanio';

-- 2. Catégorie : Plat chinois (ID = 2)
UPDATE plats SET categorie_id = 2 WHERE nom = 'Mi sao';

-- 3. Catégorie : Soupe (ID = 3)
UPDATE plats SET categorie_id = 3 WHERE nom = 'Soupe chinoise';

-- 4. Catégorie : Dessert et gouter (ID = 4)
UPDATE plats SET categorie_id = 4 WHERE nom = 'Mofo gasy (les 4)';

-- 5. Catégorie : Boisson (ID = 5)
UPDATE plats SET categorie_id = 5 WHERE nom = 'Ranon''ampango';

-- detacher plat amina categorie :
UPDATE plats SET categorie_id = NULL WHERE nom = 'Romazava';