CREATE TABLE CLIENT (
    id INT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
);
INSERT INTO CLIENT (id, nom) VALUES
  (1, 'Rakoto Jean'),
  (2, 'Rasoa Marie'),
  (3, 'Andry Hery'),
  (4, 'Fara Volatiana');
ALTER TABLE COMMANDE ADD id_client INT REFERENCES CLIENT(id);

-- Associer chaque commande à un client
UPDATE COMMANDE SET id_client = 1 WHERE id IN (1, 5);
UPDATE COMMANDE SET id_client = 2 WHERE id IN (2, 6);
UPDATE COMMANDE SET id_client = 3 WHERE id IN (3, 7);
UPDATE COMMANDE SET id_client = 4 WHERE id IN (4, 8);

  INSERT INTO CLIENT (id, nom) VALUES (5, 'Tiana Lova');
  INSERT INTO COMMANDE (date_commande, id_plat, id_client) VALUES ('2024-06-06', 2, 5);