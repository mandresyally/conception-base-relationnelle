--Etape 1
    SELECT * FROM PLAT ORDER BY prix DESC
--Etape 2
    SELECT COUNT(p.id) AS Total,c.nom AS Categorie FROM PLAT p
    JOIN CATEGORIE c ON c.id =p.id_categorie
    GROUP BY c.nom;