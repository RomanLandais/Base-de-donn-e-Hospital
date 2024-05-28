INSERT INTO Doctors (id_doctor, last_name, name, specialty)
VALUES
(1, 'Dupont', 'Jean', 'Cardiologue'),
(2, 'Leclerc', 'Marie', 'Neurologue'),
(3, 'Dubois', 'Pierre', 'Psychiatre');

-------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Users (id_user, last_name, name, mail, password, postal_adress, admin, secretary)
VALUES
(1, 'Martin', 'Émilie', 'emiliemartin@example.com', 'motdepasse123', '123 Rue Fouret, Nantes, France', 'false', 'false', 'false'),
(2, 'Lefèvre', 'Louis', 'louislefevre@example.com', 'motdepasse456', '456 Rue Elm, Lorient, France', 'false', 'false', 'false'),
(3, 'Mercier', 'Charlotte', 'charlottemercier@example.com', 'motdepasse789', '789 Rue Chêne, Lyon, France', 'false', 'false', 'false'),
(4,'Martin', 'Marie', 'marie.martin@example.com', 'motdepasse44', '456 Avenue des Champs-Élysées, Paris', 'false', 'true', 'false'),
(5, 'Pesquier', 'Paul', 'paul.pesquier@example.com', 'motdepasse56', '123 Rue de la Paix, Paris', 'true', 'true', 'true'),
(7, 'Jouant', 'Andre', 'andre_jouan@yahoo.fr', '$2b$10$PaHPS.naMxFC6X28m4PMWuBOjqgVaPyoOLpNJTThgOfQTN9Nh/2mO', '45 rue du paradis, Nantes', 'true', 'true', 'true');
