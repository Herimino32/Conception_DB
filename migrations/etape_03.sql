-- Table principale : une ligne par commande
CREATE TABLE commande_mere (
    id SERIAL PRIMARY KEY,
    date_commande DATE NOT NULL DEFAULT CURRENT_DATE
);

-- Table de liaison : 
CREATE TABLE commande_plat_fille (
    id SERIAL PRIMARY KEY,
    commande_id INTEGER NOT NULL,
    plat_id INTEGER NOT NULL,
    quantite INTEGER NOT NULL CHECK (quantite > 0),

    CONSTRAINT fk_commande_plat_commande
        FOREIGN KEY (commande_id) REFERENCES commande_mere(id),

    CONSTRAINT fk_commande_plat_plat
        FOREIGN KEY (plat_id) REFERENCES plats(id),

    CONSTRAINT uq_commande_plat UNIQUE (commande_id, plat_id)
);

INSERT INTO commande_mere (date_commande)
VALUES ('2026-10-15');

INSERT INTO commande_mere (date_commande)
VALUES ('2026-10-16');

-- Commande 1 : 15 octobre 2026
INSERT INTO commande_plat_fille (commande_id, plat_id, quantite)
VALUES
    (1, 2, 2), 
    (1, 4, 1), 
    (1, 7, 3); 

