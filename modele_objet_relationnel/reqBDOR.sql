-- 1. Pour chaque pièce, donnez le nombre de personnes de l'équipe, par fonction
SELECT p.nom_piece, e.fonction, COUNT(e.nom) AS nb_personnes
FROM PieceObj p, TABLE(p.equipe) e
GROUP BY p.nom_piece, e.fonction;

-- 2. Pour chaque mécanicien, indiquez combien de pièces lui sont associées
SELECT e.nom, COUNT(p.num_piece) AS nb_pieces
FROM PieceObj p, TABLE(p.equipe) e
WHERE e.fonction = 'Mecanicien'
GROUP BY e.nom;

-- 3. L’impact d’un indice de qualité est donné par le produit de sa valeur et du poids que lui est attribué. Pour chaque pièce, indiquez l’impact de chaque indice de qualité.
SELECT p.nom_piece, i.nom, i.valeur * i.poids AS impact
FROM PieceObj p, TABLE(p.indices_qualite) i;

-- 4. Pour chaque indice de qualité, calculez son impact moyen
SELECT i.nom, AVG(i.valeur * i.poids) AS impact_moyen
FROM PieceObj p, TABLE(p.indices_qualite) i
GROUP BY i.nom;