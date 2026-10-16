CREATE TABLE COMMANDE(
    id SERIAL PRIMARY KEY,
    date_commande DATE NOT NULL,
    id_plat INT REFERENCES PLAT(id) NOT NULL
);

CREATE TABLE COMMANDEDETAILS(
    id SERIAL PRIMARY KEY,
    id_commande INT REFERENCES COMMANDE(id) NOT NULL,
    id_plat INT REFERENCES PLAT(id) NOT NULL,
    quantite INT NOT NULL
);
INSERT INTO COMMANDE (date_commande, id_plat) VALUES
  ('2024-06-01', 1),
  ('2024-06-01', 2),
  ('2024-06-02', 3),
  ('2024-06-02', 1),
  ('2024-06-03', 4),
  ('2024-06-04', 2),
  ('2024-06-05', 5),
  ('2024-06-05', 3);

-- 4. Détails des commandes
INSERT INTO COMMANDEDETAILS (id_commande, id_plat, quantite) VALUES
  (1, 1, 2),
  (1, 3, 1),
  (2, 2, 1),
  (2, 4, 2),
  (3, 3, 3),
  (4, 1, 1),
  (4, 5, 1),
  (5, 4, 2),
  (6, 2, 4),
  (6, 1, 1),
  (7, 5, 1),
  (7, 3, 2),
  (8, 3, 1),
  (8, 2, 2);