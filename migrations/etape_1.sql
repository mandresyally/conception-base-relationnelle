CREATE DATABASE gargote

USE gargote
-- la carte
CREATE TABLE PLAT(
    id SERIAL PRIMARY KEY,
    nom VARCHAR(250),
    prix INTEGER
);

INSERT INTO PLAT (nom,prix) VALUES 
    ('Romazava',7000),
    ('Ravitoto sy henakisoa',8000),
    ('Akoho sy voanio',8500),
    ('Mi sao',6000),
    ('Soupe chinoise',5000),
    ('Mofo gasy (les 4)',1000),
    ('Ranon'' ampango',500);