# Ordre de requete SQL en mySQL(SGBD)
- SELECT (ce qu'on veut afficher)
- FROM (la table ou les tables)
- WHERE (les conditions)
- GROUP BY (les colonnes sur lesquelles on veut grouper)
- HAVING (les conditions sur les groupes)
- ORDER BY (les colonnes sur lesquelles on veut trier)

# Règle d'or :
- On ne peut jamais utiliser une fonction d'agrégation (comme AVG(salaire) ou COUNT(*)) dans un WHERE !

# Jointure :
- INNER JOIN : retourne les lignes qui ont des correspondances dans les deux tables.
- LEFT JOIN : retourne toutes les lignes de la table de gauche et les lignes correspondantes de la table de droite. Si aucune correspondance n'est trouvée, les résultats de la table de droite seront NULL.
- RIGHT JOIN : retourne toutes les lignes de la table de droite et les lignes correspondantes de la table de gauche. Si aucune correspondance n'est trouvée, les résultats de la table de gauche seront NULL.
- FULL OUTER JOIN : retourne toutes les lignes lorsque qu'il y a une correspondance dans l'une des tables. Si aucune correspondance n'est trouvée, les résultats de l'autre table seront NULL.
- CROSS JOIN : retourne le produit cartésien des deux tables. Chaque ligne de la première table est combinée avec chaque ligne de la deuxième table.

## structure INNer join:
```sql
SELECT table1.colonne1, table2.colonne2
FROM table1
INNER JOIN table2 ON table1.colonne_commune = table2.colonne_commune;
```
## exemple alias:
```sql
SELECT e.nom, e.salaire, d.nom_dept
FROM employes AS e
INNER JOIN departements AS d ON e.departement_id = d.id;
```
## structure LEFT join:
```sql
SELECT table1.colonne1, table2.colonne2
FROM table1
LEFT JOIN table2 ON table1.colonne_commune = table2.colonne_commune;
```
## exemple alias:
```sql
SELECT e.nom, e.salaire, d.nom_dept 
FROM employes AS e
LEFT JOIN departements AS d ON e.departement_id = d.id;
```
## structure RIGHT join:
```sql
SELECT table1.colonne1, table2.colonne2
FROM table1
RIGHT JOIN table2 ON table1.colonne_commune = table2.colonne_commune;
```
## exemple alias:
```sql
SELECT e.nom, e.salaire, d.nom_dept
FROM employes AS e
RIGHT JOIN departements AS d ON e.departement_id = d.id;```

```
### Explication des left join et right join:
- LEFT JOIN : retourne toutes les lignes de la table de gauche et les lignes correspondantes de la table de droite. Si aucune correspondance n'est trouvée, les résultats de la table de droite seront NULL.
- RIGHT JOIN : retourne toutes les lignes de la table de droite et les lignes correspondantes de la table de gauche. Si aucune correspondance n'est trouvée, les résultats de la table de gauche seront NULL.
- FULL OUTER JOIN : retourne toutes les lignes lorsque qu'il y a une correspondance dans l'une des tables. Si aucune correspondance n'est trouvée, les résultats de l'autre table seront NULL.
- CROSS JOIN : retourne le produit cartésien des deux tables. Chaque ligne de la première table est combinée avec chaque ligne de la deuxième table.

## Creation view:
```sql
CREATE VIEW nom_de_la_vue AS
SELECT colonne1, colonne2, ...
FROM table
WHERE condition;
```
## suppimer view:
```sql
DROP VIEW nom_de_la_vue;
```

## Suppression de table:
```sql
DROP TABLE nom_de_la_table;
```
## Ajouter une colonne:
```sql
ALTER TABLE nom_de_la_table
ADD nom_de_la_colonne type_de_donnee;
```
## Supprimer une colonne:
```sql
ALTER TABLE nom_de_la_table
DROP COLUMN nom_de_la_colonne;
```
## Modifier une colonne:
```sql
ALTER TABLE nom_de_la_table
MODIFY COLUMN nom_de_la_colonne nouveau_type_de_donnee;
```
## Renommer une colonne:
```sql
ALTER TABLE nom_de_la_table
CHANGE COLUMN ancien_nom_de_colonne nouveau_nom_de_colonne type_de_donnee;
```
## Renommer une table:
```sql
ALTER TABLE ancien_nom_de_table
RENAME TO nouveau_nom_de_table;
```
## Ajouter une contrainte:
```sql
ALTER TABLE nom_de_la_table
ADD CONSTRAINT nom_de_la_contrainte type_de_contrainte (colonne);
```
## Supprimer une contrainte:
```sql
ALTER TABLE nom_de_la_table
DROP CONSTRAINT nom_de_la_contrainte;
```
## Ajouter un index:
```sql
CREATE INDEX nom_de_l_index ON nom_de_la_table (colonne);
```
## Supprimer un index:
```sql
DROP INDEX nom_de_l_index ON nom_de_la_table;
```

## 