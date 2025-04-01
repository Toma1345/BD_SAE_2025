-- Insertion des données dans la table PieceObj

-- Création des objets Equipe
DECLARE
    equipe1 EquipeTabT := EquipeTabT(
        Equipe('Goscinny', 'Mecanicien'),
        Equipe('Uderzo', 'Inspecteur')
    );
    indices1 ListeIndices := ListeIndices(
        IndicesQualite('carbone', 3, 4),
        IndicesQualite('securite', 4, 5),
        IndicesQualite('prix', 4, 3)
    );
BEGIN
    INSERT INTO PieceObj (
        num_piece, 
        nom_piece, 
        date_debut, 
        date_fin, 
        equipe, 
        indices_qualite
    ) 
    VALUES (
        442, 
        'Panneau Fuselage', 
        TO_DATE('2025-06-11 13:00', 'YYYY-MM-DD HH24:MI'), 
        TO_DATE('2025-06-13 19:00', 'YYYY-MM-DD HH24:MI'), 
        equipe1, 
        indices1
    );
END;
/

-- Création des objets Equipe et insertion d'autres exemples

DECLARE
    equipe2 EquipeTabT := EquipeTabT(
        Equipe('Dupont', 'Ingenieur'),
        Equipe('Durand', 'Technicien')
    );
    indices2 ListeIndices := ListeIndices(
        IndicesQualite('carbone', 5, 5),
        IndicesQualite('securite', 3, 4),
        IndicesQualite('prix', 2, 3)
    );
BEGIN
    INSERT INTO PieceObj (
        num_piece, 
        nom_piece, 
        date_debut, 
        date_fin, 
        equipe, 
        indices_qualite
    ) 
    VALUES (
        443, 
        'Aile Droite', 
        TO_DATE('2025-07-01 08:00', 'YYYY-MM-DD HH24:MI'), 
        TO_DATE('2025-07-03 18:00', 'YYYY-MM-DD HH24:MI'), 
        equipe2, 
        indices2
    );
END;
/

DECLARE
    equipe3 EquipeTabT := EquipeTabT(
        Equipe('Martin', 'Chef de Projet'),
        Equipe('Bernard', 'Analyste')
    );
    indices3 ListeIndices := ListeIndices(
        IndicesQualite('carbone', 4, 4),
        IndicesQualite('securite', 5, 5),
        IndicesQualite('prix', 3, 4)
    );
BEGIN
    INSERT INTO PieceObj (
        num_piece, 
        nom_piece, 
        date_debut, 
        date_fin, 
        equipe, 
        indices_qualite
    ) 
    VALUES (
        444, 
        'Cockpit', 
        TO_DATE('2025-08-15 09:00', 'YYYY-MM-DD HH24:MI'), 
        TO_DATE('2025-08-20 17:00', 'YYYY-MM-DD HH24:MI'), 
        equipe3, 
        indices3
    );
END;
/

DECLARE
    equipe4 EquipeTabT := EquipeTabT(
        Equipe('Martin', 'Chef de Projet'),
        Equipe('Bernard', 'Analyste'),
        Equipe('Jean-Michel', 'Analyste'),
        Equipe('Michel', 'Mecanicien')
    );
    indices4 ListeIndices := ListeIndices(
        IndicesQualite('carbone', 1, 4),
        IndicesQualite('securite', 5, 2),
        IndicesQualite('prix', 5, 4)
    );
BEGIN
    INSERT INTO PieceObj (
        num_piece, 
        nom_piece, 
        date_debut, 
        date_fin, 
        equipe, 
        indices_qualite
    ) 
    VALUES (
        445, 
        'Clavier', 
        TO_DATE('2025-08-15 09:00', 'YYYY-MM-DD HH24:MI'), 
        TO_DATE('2025-08-20 17:00', 'YYYY-MM-DD HH24:MI'), 
        equipe4, 
        indices4
    );
END;
/

DECLARE
    equipe5 EquipeTabT := EquipeTabT(
        Equipe('Paul', 'Mecanicien'),
        Equipe('Jacques', 'Technicien')
    );
    indices5 ListeIndices := ListeIndices(
        IndicesQualite('carbone', 3, 3),
        IndicesQualite('securite', 4, 4),
        IndicesQualite('prix', 2, 2)
    );
BEGIN
    INSERT INTO PieceObj (
        num_piece, 
        nom_piece, 
        date_debut, 
        date_fin, 
        equipe, 
        indices_qualite
    ) 
    VALUES (
        446, 
        'Porte', 
        TO_DATE('2025-09-01 10:00', 'YYYY-MM-DD HH24:MI'), 
        TO_DATE('2025-09-03 16:00', 'YYYY-MM-DD HH24:MI'), 
        equipe5, 
        indices5
    );
END;
/

DECLARE
    equipe6 EquipeTabT := EquipeTabT(
        Equipe('Paul', 'Mecanicien'),
        Equipe('Jean', 'Inspecteur')
    );
    indices6 ListeIndices := ListeIndices(
        IndicesQualite('carbone', 5, 5),
        IndicesQualite('securite', 3, 3),
        IndicesQualite('prix', 4, 4)
    );
BEGIN
    INSERT INTO PieceObj (
        num_piece, 
        nom_piece, 
        date_debut, 
        date_fin, 
        equipe, 
        indices_qualite
    ) 
    VALUES (
        447, 
        'Fenêtre', 
        TO_DATE('2025-09-05 08:00', 'YYYY-MM-DD HH24:MI'), 
        TO_DATE('2025-09-07 18:00', 'YYYY-MM-DD HH24:MI'), 
        equipe6, 
        indices6
    );
END;
/