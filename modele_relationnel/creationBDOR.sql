CREATE TYPE IndiceQualite AS OBJECT (nom VARCHAR(50), valeur INT, poids INT);

CREATE TYPE ListeIndices AS TABLE OF IndiceQualite;

CREATE TYPE EquipeType AS TABLE OF VARCHAR(100);

CREATE TABLE PieceObj (
    id_piece INT PRIMARY KEY,
    nom VARCHAR(255),
    date_debut DATE,
    date_fin DATE,
    equipe EquipeType,
    indices ListeIndices
)
NESTED TABLE equipe STORE AS Equipe_Table
NESTED TABLE indices STORE AS Indices_Table;