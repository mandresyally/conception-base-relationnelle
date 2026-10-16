CREATE TABLE SERVEUR(
    id INT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
)
CREATE TABLE TABLEDETAILS(
    id INT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
)

INSERT INTO SERVEUR (id, nom) VALUES
  (1, 'Njaka Rakoto'),
  (2, 'RasoLalao Rasoa');

  INSERT INTO TABLEDETAILS (id, nom) VALUES
  (1, 'Table 1'),
  (2, 'Table 2'),
  (3, 'Table 3'),
    (4, 'Table 4'),
    (5, 'Table 5'),
    (6, 'Table 6'),
    (7, 'Table 7'),
    (8, 'Table 8');

ALTER TABLE COMMANDE ADD id_serveur INT REFERENCES SERVEUR(id);
ALTER TABLE COMMANDE ADD id_table INT REFERENCES TABLEDETAILS(id);