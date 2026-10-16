--Etape 1
    SELECT * FROM PLAT ORDER BY prix DESC
--Etape 2
    SELECT COUNT(p.id) AS Total,c.nom AS Categorie FROM PLAT p
    JOIN CATEGORIE c ON c.id =p.id_categorie
    GROUP BY c.nom;

--Etape 3
SELECT c.id, c.date_commande, p.nom AS plat, p.prix
FROM COMMANDE c
JOIN PLAT p ON p.id = c.id_plat
ORDER BY c.date_commande, c.id;
 --ETape 4
 SELECT cl.id,
       cl.nom,
       COUNT(c.id) AS nb_commandes,
       CASE
           WHEN COUNT(c.id) >= 2 THEN 'client habitué'
           ELSE 'client de passage'
       END AS statut
FROM CLIENT cl
JOIN COMMANDE c ON c.id_client = cl.id
GROUP BY cl.id, cl.nom
ORDER BY cl.id;