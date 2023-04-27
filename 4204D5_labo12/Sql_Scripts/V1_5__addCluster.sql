USE Labo12
GO

DROP INDEX IF EXISTS Etudiants.Etudiant.IX_Etudiant_Nom_Prenom
GO
CREATE NONCLUSTERED INDEX IX_Etudiant_Nom_Prenom ON Etudiants.Etudiant(Prenom, Nom);
GO

DROP INDEX IF EXISTS Fruits.EtudiantFruit.IX_EtudiantFruit_FruitID
GO
CREATE NONCLUSTERED INDEX IX_EtudiantFruit_EtudiantID_FruitID ON Fruits.EtudiantFruit(EtudiantID,FruitID);
GO