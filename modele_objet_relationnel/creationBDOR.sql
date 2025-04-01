-- Création de l'objet IndicesQualite
CREATE OR REPLACE TYPE IndicesQualite AS OBJECT (
    nom VARCHAR2(50),
    valeur INT,
    poids INT
);
/

CREATE TYPE ListeIndices AS TABLE OF IndicesQualite;
/

-- Création de l'objet Equipe
CREATE OR REPLACE TYPE Equipe AS OBJECT (
    nom VARCHAR2(100),
    fonction VARCHAR2(100)
);
/

CREATE TYPE EquipeTabT as table of Equipe;
/

CREATE TABLE PieceObj (
    num_piece INT PRIMARY KEY,
    nom_piece VARCHAR(255),
    date_debut DATE,
    date_fin DATE,
    equipe EquipeTabT,
    indices_qualite ListeIndices
) NESTED TABLE equipe STORE AS Equipe_Table
NESTED TABLE indices_qualite STORE AS Indices_Table;