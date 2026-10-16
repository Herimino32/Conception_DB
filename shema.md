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