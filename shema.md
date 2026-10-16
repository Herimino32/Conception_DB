# etape 1 : carte
## Shema relationnelle etape 1:
- plats(**id**,nom,prix)
## piege :
- type prix : entier car le prix ici est en ariary
- identifiant : id type SERIAL

# etape 2 : categorie
## Shema relationnelle etape 2:
- plats(**id**,nom,prix,#categorie_id)  (modifié)
- categorie(**id**,nom) (nouveaux)

## piege :
- Pourquoi ne pas simplement ajouter une une colonne categorie :
--> Parce qu'une simple colonne peut entraîner des erreurs de saisie et des problèmes de maintenance. Par exemple :
si un utilisateur saisit « Dessert » au lieu de « Desera », le filtre ne fonctionnera pas correctement. De plus, si on modifie le nom d'une catégorie, il faut mettre à jour chaque plat concerné, ce qui peut entraîner des incohérences .

# Étape 3 : Les commandes

## Demande client
« J'enregistre les commandes : la date, quels plats et combien de chaque. »

## Schéma relationnel

- plats(**id**, nom, prix, #categorie_id) 
- categorie(**id**, nom) 
- commande_mere(**id**, date, total_montant) (nouveau)
- commande_plat_fille(**id**, #commande_id, #plat_id, quantite) (nouveau)

### Relation : cardinalité N to N

- 1 commande → N plats
- 1 plat → N commandes

## Piège : Où placer la quantité ?

La quantité doit être placée dans `commande_plat_fille`, car elle dépend du plat commandé dans une commande précise.

Exemple :
- Commande 1 : 3 pizzas
- Commande 2 : 5 pizzas
