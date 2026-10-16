--Étape 2 – Les catégories
CREATE TABLE CATEGORIE(
    id SERIAL PRIMARY KEY,
    nom VARCHAR(250)

);

INSERT INTO CATEGORIE (nom) VALUES 
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et goûter'),
('Boisson');

ALTER TABLE PLAT
ADD id_categorie INT REFERENCES CATEGORIE(id) NOT NULL;

UPDATE PLAT SET id_categorie = CASE 
    WHEN nom IN ('Romazava','Ravitoto sy henakisoa','Akoho sy voanio') THEN 1
    WHEN nom IN ('Mi sao') THEN 2
    WHEN nom IN ('Soupe chinoise') THEN 3
    WHEN nom IN ('Mofo gasy (les 4)') THEN 4
    WHEN nom IN ('Ranon'' ampango') THEN 5
END;