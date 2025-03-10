-- 2. Liste des composants directs d'une pièce composée spécifique
SELECT P.nom, C.quantite FROM Composition C JOIN Piece P ON C.ID_PIECE_COMPOSANT = P.ID_PIECE WHERE C.ID_PIECE_COMPOSEE = (SELECT ID_PIECE FROM Piece WHERE nom = 'Panneau de fuselage');

-- 3. Liste des pièces composées triées par nombre de composants
SELECT P.nom, COUNT(C.ID_PIECE_COMPOSANT) AS nombre_composants FROM Piece P JOIN Composition C ON P.ID_PIECE = C.ID_PIECE_COMPOSEE GROUP BY P.nom ORDER BY nombre_composants DESC;

-- 4. Nombre total de pièces composées
SELECT COUNT(DISTINCT ID_PIECE_COMPOSEE) AS nombre_pieces_composees FROM Composition;

-- 5. Coût total de chaque pièce composée
SELECT C.ID_PIECE_COMPOSEE, P.nom, SUM(C.quantite * Pc.prix) AS cout_total FROM Composition C JOIN Piece Pc ON C.ID_PIECE_COMPOSANT = Pc.ID_PIECE JOIN Piece P ON C.ID_PIECE_COMPOSEE = P.ID_PIECE GROUP BY C.ID_PIECE_COMPOSEE, P.nom;

-- 6. Trouver toutes les pièces qui entrent dans la fabrication d’une pièce composée (directement ou indirectement)
SELECT P.nom AS piece_composee, Pc.nom AS composant FROM Piece P JOIN Composition C ON P.ID_PIECE = C.ID_PIECE_COMPOSEE JOIN Piece Pc ON C.ID_PIECE_COMPOSANT = Pc.ID_PIECE CONNECT BY PRIOR C.ID_PIECE_COMPOSANT = C.ID_PIECE_COMPOSEE ORDER BY P.ID_PIECE;
