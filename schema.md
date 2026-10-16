# Étape 1

## Schéma relationnel

`PLAT(`**`id`**`, nom, prix)`

## Question

Quel type choisissez-vous pour le prix ? Quel identifiant choisissez-vous ?

## Réponse

- **Type du prix** : `INTEGER`
- **Identifiant** : `SERIAL PRIMARY KEY`

---

# Étape 2

## Schéma relationnel

`PLAT(`**`id`**`, nom, prix,` **`#id_categorie`**`)`

## Question

Pourquoi ne pas simplement ajouter une colonne `categorie VARCHAR(50)` dans la table des plats ? Donnez un exemple de problème concret.

## Réponse

- **Raison** : le nom d'une catégorie peut changer, et il faudrait alors modifier toutes les lignes concernées par ce changement.
- **Exemple concret** : si l'on renomme « malagasy » en « plat malgache », il faut tout mettre à jour. Si une seule ligne est oubliée, cela produit une donnée incohérente et fausse les résultats.

# Étape 3
`COMMANDE(`**`id`**`, date_commande,` **`#id_plat`**`)`
`COMMANDEDETAILS(`**`id`**`,` **`#id_ccommande`**`,`**`#id_plat`**`)`

Où placez-vous la quantité ?
## Réponse
- Dans COMMANDEDETAILS

# Étape 4
`CLIENT(`**`id`**`, nom)`
`COMMANDE(`**`id`**`, date_commande,` **`#id_plat`**`,` **`#id_client`**`)`

Votre clé étrangère est-elle NOT NULL ? Quelle jointure faut-il pour ne perdre aucune commande ?

## Réponse
- Sans NOT NULL, id_client accepte NULL. Une commande peut donc exister sans client. C’était voulu : la colonne a été ajoutée sur une table déjà remplie, donc elle ne pouvait pas être NOT NULL tout de suite.