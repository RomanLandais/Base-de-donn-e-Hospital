BEGIN TRANSACTION;

-- Insertion des données dans la table Consultations
INSERT INTO Consultations (title, date, description, doctor_last_name, doctor_name, id_doctor, id_user)
VALUES
('Consultation Cardiologie', '2024-05-20', 'Bilan cardiaque préventif', 'Dupont', 'Jean', 1, 1),
('Consultation Neurologie', '2024-05-21', 'Diagnostic des maux de tête fréquents', 'Leclerc', 'Marie', 2, 2),
('Consultation Psychiatrie', '2024-05-22', 'Suivi du traitement de la dépression', 'Dubois', 'Pierre', 3, 3);

-- Insertion des données dans la table Stay
INSERT INTO Stay (stay_reason, doctor_specialty, id_doctor, id_user, start_date, end_date)
VALUES
('Opération cardiaque programmée', 'Cardiologue', 1, 1, '2024-05-20', '2024-05-25'),
('Suivi de l''épilepsie', 'Neurologue', 2, 2, '2024-05-21', '2024-05-26'),
('Hospitalisation pour dépression sévère', 'Psychiatre', 3, 3, '2024-05-22', '2024-05-27');

-- Insertion des données dans la table Prescription
INSERT INTO Prescription (medicament_name, posology, start_date, end_date, cured, id_user, id_doctor)
VALUES
('Aspirine', '1 comprimé par jour', '2024-05-20', '2024-05-25', 'true', 1, 1),
('Topiramate', '50 mg matin et soir', '2024-05-21', '2024-05-26', 'false', 2, 2),
('Sertraline', '100 mg une fois par jour', '2024-05-22', '2024-05-27', 'true', 3, 3);

-- Insertion des données dans la table Schedule
INSERT INTO Schedule (date, id_doctor, doctor_name, id_patient1, patient_name1, id_patient2, patient_name2, id_patient3, patient_name3, id_patient4, patient_name4, id_patient5, patient_name5)
VALUES
('2024-05-20', 1, 'Dupont', 1, 'Martin Émilie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2024-05-21', 2, 'Leclerc', 2, 'Lefèvre Louis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2024-05-22', 3, 'Dubois', 3, 'Mercier Charlotte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT;
