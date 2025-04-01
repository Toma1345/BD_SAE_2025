-- Suppression de la table PieceObj et des tables imbriquées
DROP TABLE PieceObj CASCADE CONSTRAINTS;
DROP TABLE Equipe_Table CASCADE CONSTRAINTS;
DROP TABLE Indices_Table CASCADE CONSTRAINTS;

-- Suppression des types
DROP TYPE ListeIndices;
DROP TYPE IndicesQualite;
DROP TYPE EquipeTabT;
DROP TYPE Equipe;