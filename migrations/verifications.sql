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
