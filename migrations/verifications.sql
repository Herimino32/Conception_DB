-- Etape 1 :
select * from plats order by prix desc;
-- Etape 2 :
SELECT
    c.id,
    c.nom AS categorie,
    COUNT(p.id) AS nombre_plats
FROM categorie AS c
LEFT JOIN plats AS p
    ON p.categorie_id = c.id
GROUP BY c.id, c.nom
ORDER BY c.id;
-- Etape 3 :
SELECT
    cm.id AS commande_id,
    cm.date_commande,
    SUM(p.prix * cpf.quantite) AS montant_total
FROM commande_mere cm
JOIN commande_plat_fille cpf ON cpf.commande_id = cm.id
JOIN plats p ON p.id = cpf.plat_id
GROUP BY cm.id, cm.date_commande
ORDER BY cm.id;
