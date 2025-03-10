-- Insertion des pièces
INSERT INTO Piece (ID_PIECE, nom, description, prix) VALUES (1, 'Vis en titane', 'Vis en titane pour assemblage', 2.50);
INSERT INTO Piece (ID_PIECE, nom, description, prix) VALUES (2, 'Rivets en aluminium', 'Rivets pour fixation', 0.10);
INSERT INTO Piece (ID_PIECE, nom, description, prix) VALUES (3, 'Raidisseurs en composite', 'Raidisseurs pour renforcer la structure', 15.00);
INSERT INTO Piece (ID_PIECE, nom, description, prix) VALUES (4, 'Plaque en alliage d’aluminium', 'Plaque de structure', 50.00);
INSERT INTO Piece (ID_PIECE, nom, description, prix) VALUES (5, 'Panneau de fuselage', 'Assemblage de structure de fuselage', NULL);
INSERT INTO Piece (ID_PIECE, nom, description, prix) VALUES (6, 'Segment de fuselage', 'Segment structurel de l’avion', NULL);

-- Insertion des compositions
INSERT INTO Composition (ID_PIECE_COMPOSEE, ID_PIECE_COMPOSANT, quantite) VALUES (5, 1, 8);
INSERT INTO Composition (ID_PIECE_COMPOSEE, ID_PIECE_COMPOSANT, quantite) VALUES (5, 2, 20);
INSERT INTO Composition (ID_PIECE_COMPOSEE, ID_PIECE_COMPOSANT, quantite) VALUES (5, 3, 4);
INSERT INTO Composition (ID_PIECE_COMPOSEE, ID_PIECE_COMPOSANT, quantite) VALUES (5, 4, 1);
INSERT INTO Composition (ID_PIECE_COMPOSEE, ID_PIECE_COMPOSANT, quantite) VALUES (6, 5, 2);