--
-- Fichier généré par SQLiteStudio v3.4.4 sur mar. mai 28 08:53:41 2024
--
-- Encodage texte utilisé : UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tableau : Consultations
CREATE TABLE IF NOT EXISTS Consultations (
    id_consultation  INTEGER      PRIMARY KEY AUTOINCREMENT
                                  NOT NULL,
    title            VARCHAR (50),
    date             DATE,
    description      TEXT,
    doctor_last_name VARCHAR (50),
    doctor_name      VARCHAR (50),
    id_doctor        INTEGER,
    id_user          INTEGER,
    id_stay          INTEGER      REFERENCES Stay (id_stay),
    FOREIGN KEY (
        id_doctor
    )
    REFERENCES Doctors (id_doctor),
    FOREIGN KEY (
        id_user
    )
    REFERENCES Users (id_user) 
);

INSERT INTO Consultations (
                              id_consultation,
                              title,
                              date,
                              description,
                              doctor_last_name,
                              doctor_name,
                              id_doctor,
                              id_user,
                              id_stay
                          )
                          VALUES (
                              1,
                              'Consultation Cardiologie',
                              '20-05-2024',
                              'Bilan cardiaque préventif',
                              'Dupont',
                              'Jean',
                              1,
                              1,
                              1
                          );

INSERT INTO Consultations (
                              id_consultation,
                              title,
                              date,
                              description,
                              doctor_last_name,
                              doctor_name,
                              id_doctor,
                              id_user,
                              id_stay
                          )
                          VALUES (
                              2,
                              'Consultation Neurologie',
                              '21-05-2024',
                              'Diagnostic des maux de tête fréquents',
                              'Leclerc',
                              'Marie',
                              2,
                              2,
                              2
                          );

INSERT INTO Consultations (
                              id_consultation,
                              title,
                              date,
                              description,
                              doctor_last_name,
                              doctor_name,
                              id_doctor,
                              id_user,
                              id_stay
                          )
                          VALUES (
                              3,
                              'Consultation Psychiatrie',
                              '22-05-2024',
                              'Suivi du traitement de la dépression',
                              'Dubois',
                              'Pierre',
                              3,
                              3,
                              3
                          );

INSERT INTO Consultations (
                              id_consultation,
                              title,
                              date,
                              description,
                              doctor_last_name,
                              doctor_name,
                              id_doctor,
                              id_user,
                              id_stay
                          )
                          VALUES (
                              4,
                              'Consultation Cardiologie',
                              '2024-05-07',
                              'Malade imaginaire, à juste besoin de sortir plus et prendre confiance en la vie',
                              'Dupont',
                              'Jean',
                              1,
                              7,
                              21
                          );

INSERT INTO Consultations (
                              id_consultation,
                              title,
                              date,
                              description,
                              doctor_last_name,
                              doctor_name,
                              id_doctor,
                              id_user,
                              id_stay
                          )
                          VALUES (
                              8,
                              'test envoi avis',
                              '2024-05-25T10:08:40.979Z',
                              'test envoi avis',
                              'Leclerc',
                              'Marie',
                              2,
                              7,
                              32
                          );


-- Tableau : Doctors
CREATE TABLE IF NOT EXISTS Doctors (
    id_doctor INTEGER      NOT NULL
                           PRIMARY KEY AUTOINCREMENT,
    last_name VARCHAR (50),
    name      VARCHAR (50),
    specialty VARCHAR (50) 
);

INSERT INTO Doctors (
                        id_doctor,
                        last_name,
                        name,
                        specialty
                    )
                    VALUES (
                        1,
                        'Dupont',
                        'Jean',
                        'Cardiologue'
                    );

INSERT INTO Doctors (
                        id_doctor,
                        last_name,
                        name,
                        specialty
                    )
                    VALUES (
                        2,
                        'Leclerc',
                        'Marie',
                        'Neurologue'
                    );

INSERT INTO Doctors (
                        id_doctor,
                        last_name,
                        name,
                        specialty
                    )
                    VALUES (
                        3,
                        'Dubois',
                        'Pierre',
                        'Psychiatre'
                    );

INSERT INTO Doctors (
                        id_doctor,
                        last_name,
                        name,
                        specialty
                    )
                    VALUES (
                        4,
                        'Brave',
                        'Andre',
                        'Générale'
                    );

INSERT INTO Doctors (
                        id_doctor,
                        last_name,
                        name,
                        specialty
                    )
                    VALUES (
                        5,
                        'Le Sang',
                        'François',
                        'Chirurgien'
                    );


-- Tableau : Prescription
CREATE TABLE IF NOT EXISTS Prescription (
    id_medicament   INTEGER     NOT NULL
                                PRIMARY KEY AUTOINCREMENT,
    medicament_name TEXT,
    posology        TEXT,
    start_date      DATE,
    end_date        DATE,
    cured           VARCHAR (5),
    id_user         INTEGER,
    id_doctor       INTEGER,
    id_stay         INTEGER     REFERENCES Stay (id_stay),
    FOREIGN KEY (
        id_user
    )
    REFERENCES Users (id_user),
    FOREIGN KEY (
        id_doctor
    )
    REFERENCES Doctors (id_doctor) 
);

INSERT INTO Prescription (
                             id_medicament,
                             medicament_name,
                             posology,
                             start_date,
                             end_date,
                             cured,
                             id_user,
                             id_doctor,
                             id_stay
                         )
                         VALUES (
                             1,
                             'Placebo',
                             '1 comprimé par jour',
                             '2024-05-07',
                             '2024-05-11',
                             'true',
                             7,
                             1,
                             21
                         );

INSERT INTO Prescription (
                             id_medicament,
                             medicament_name,
                             posology,
                             start_date,
                             end_date,
                             cured,
                             id_user,
                             id_doctor,
                             id_stay
                         )
                         VALUES (
                             4,
                             'Aspirine',
                             '1 comprimé par jour',
                             '20-05-2024',
                             '25-05-2024',
                             'true',
                             1,
                             1,
                             1
                         );

INSERT INTO Prescription (
                             id_medicament,
                             medicament_name,
                             posology,
                             start_date,
                             end_date,
                             cured,
                             id_user,
                             id_doctor,
                             id_stay
                         )
                         VALUES (
                             5,
                             'Topiramate',
                             '50 mg matin et soir',
                             '21-05-2024',
                             '26-05-2024',
                             'false',
                             2,
                             2,
                             2
                         );

INSERT INTO Prescription (
                             id_medicament,
                             medicament_name,
                             posology,
                             start_date,
                             end_date,
                             cured,
                             id_user,
                             id_doctor,
                             id_stay
                         )
                         VALUES (
                             6,
                             'Sertraline',
                             '100 mg une fois par jour',
                             '22-05-2024',
                             '27-05-2024',
                             'true',
                             3,
                             3,
                             3
                         );

INSERT INTO Prescription (
                             id_medicament,
                             medicament_name,
                             posology,
                             start_date,
                             end_date,
                             cured,
                             id_user,
                             id_doctor,
                             id_stay
                         )
                         VALUES (
                             8,
                             'test envoi prescription',
                             'test envoi prescription',
                             '2024-05-25T10:08:40.979Z',
                             '2024-05-28T10:08:40.979Z',
                             '1',
                             7,
                             2,
                             32
                         );


-- Tableau : Schedule
CREATE TABLE IF NOT EXISTS Schedule (
    id_schedule   INTEGER      NOT NULL
                               PRIMARY KEY AUTOINCREMENT,
    date          DATE,
    id_doctor     INTEGER,
    doctor_name   VARCHAR (50),
    id_patient1   INTEGER,
    patient_name1 VARCHAR (50),
    id_patient2   INTEGER,
    patient_name2 VARCHAR (50),
    id_patient3   INTEGER,
    patient_name3 VARCHAR (50),
    id_patient4   INTEGER,
    patient_name4 VARCHAR (50),
    id_patient5   INTEGER,
    patient_name5 VARCHAR (50),
    FOREIGN KEY (
        id_doctor
    )
    REFERENCES Doctors (id_doctor),
    FOREIGN KEY (
        id_patient1
    )
    REFERENCES Users (id_user),
    FOREIGN KEY (
        id_patient2
    )
    REFERENCES Users (id_user),
    FOREIGN KEY (
        id_patient3
    )
    REFERENCES Users (id_user),
    FOREIGN KEY (
        id_patient4
    )
    REFERENCES Users (id_user),
    FOREIGN KEY (
        id_patient5
    )
    REFERENCES Users (id_user) 
);

INSERT INTO Schedule (
                         id_schedule,
                         date,
                         id_doctor,
                         doctor_name,
                         id_patient1,
                         patient_name1,
                         id_patient2,
                         patient_name2,
                         id_patient3,
                         patient_name3,
                         id_patient4,
                         patient_name4,
                         id_patient5,
                         patient_name5
                     )
                     VALUES (
                         1,
                         '20-05-2024',
                         1,
                         'Dupont Jean',
                         1,
                         'Martin Émilie',
                         NULL,
                         NULL,
                         NULL,
                         NULL,
                         NULL,
                         NULL,
                         NULL,
                         NULL
                     );

INSERT INTO Schedule (
                         id_schedule,
                         date,
                         id_doctor,
                         doctor_name,
                         id_patient1,
                         patient_name1,
                         id_patient2,
                         patient_name2,
                         id_patient3,
                         patient_name3,
                         id_patient4,
                         patient_name4,
                         id_patient5,
                         patient_name5
                     )
                     VALUES (
                         2,
                         '21-05-2024',
                         2,
                         'Leclerc Marie',
                         2,
                         'Lefèvre Louis',
                         NULL,
                         NULL,
                         NULL,
                         NULL,
                         NULL,
                         NULL,
                         NULL,
                         NULL
                     );

INSERT INTO Schedule (
                         id_schedule,
                         date,
                         id_doctor,
                         doctor_name,
                         id_patient1,
                         patient_name1,
                         id_patient2,
                         patient_name2,
                         id_patient3,
                         patient_name3,
                         id_patient4,
                         patient_name4,
                         id_patient5,
                         patient_name5
                     )
                     VALUES (
                         3,
                         '22-05-2024',
                         3,
                         'Dubois Pierre',
                         3,
                         'Mercier Charlotte',
                         NULL,
                         NULL,
                         NULL,
                         NULL,
                         NULL,
                         NULL,
                         NULL,
                         NULL
                     );

INSERT INTO Schedule (
                         id_schedule,
                         date,
                         id_doctor,
                         doctor_name,
                         id_patient1,
                         patient_name1,
                         id_patient2,
                         patient_name2,
                         id_patient3,
                         patient_name3,
                         id_patient4,
                         patient_name4,
                         id_patient5,
                         patient_name5
                     )
                     VALUES (
                         9,
                         '2024-05-29',
                         2,
                         'Leclerc Marie',
                         5,
                         'Pesquier Paul',
                         '',
                         NULL,
                         '',
                         NULL,
                         '',
                         NULL,
                         '',
                         NULL
                     );

INSERT INTO Schedule (
                         id_schedule,
                         date,
                         id_doctor,
                         doctor_name,
                         id_patient1,
                         patient_name1,
                         id_patient2,
                         patient_name2,
                         id_patient3,
                         patient_name3,
                         id_patient4,
                         patient_name4,
                         id_patient5,
                         patient_name5
                     )
                     VALUES (
                         10,
                         '2024-05-23',
                         2,
                         'Leclerc Marie',
                         3,
                         'Mercier Charlotte',
                         4,
                         'Martin Marie',
                         5,
                         'Pesquier Paul',
                         4,
                         'Martin Marie',
                         2,
                         'Lefèvre Louis'
                     );

INSERT INTO Schedule (
                         id_schedule,
                         date,
                         id_doctor,
                         doctor_name,
                         id_patient1,
                         patient_name1,
                         id_patient2,
                         patient_name2,
                         id_patient3,
                         patient_name3,
                         id_patient4,
                         patient_name4,
                         id_patient5,
                         patient_name5
                     )
                     VALUES (
                         11,
                         '2024-05-23',
                         2,
                         'Leclerc Marie',
                         3,
                         'Mercier Charlotte',
                         4,
                         'Martin Marie',
                         5,
                         'Pesquier Paul',
                         4,
                         'Martin Marie',
                         2,
                         'Lefèvre Louis'
                     );

INSERT INTO Schedule (
                         id_schedule,
                         date,
                         id_doctor,
                         doctor_name,
                         id_patient1,
                         patient_name1,
                         id_patient2,
                         patient_name2,
                         id_patient3,
                         patient_name3,
                         id_patient4,
                         patient_name4,
                         id_patient5,
                         patient_name5
                     )
                     VALUES (
                         12,
                         '2024-05-23',
                         2,
                         'Leclerc Marie',
                         3,
                         'Mercier Charlotte',
                         4,
                         'Martin Marie',
                         5,
                         'Pesquier Paul',
                         4,
                         'Martin Marie',
                         2,
                         'Lefèvre Louis'
                     );

INSERT INTO Schedule (
                         id_schedule,
                         date,
                         id_doctor,
                         doctor_name,
                         id_patient1,
                         patient_name1,
                         id_patient2,
                         patient_name2,
                         id_patient3,
                         patient_name3,
                         id_patient4,
                         patient_name4,
                         id_patient5,
                         patient_name5
                     )
                     VALUES (
                         13,
                         '2024-05-23',
                         2,
                         'Leclerc Marie',
                         3,
                         'Mercier Charlotte',
                         4,
                         'Martin Marie',
                         5,
                         'Pesquier Paul',
                         4,
                         'Martin Marie',
                         2,
                         'Lefèvre Louis'
                     );

INSERT INTO Schedule (
                         id_schedule,
                         date,
                         id_doctor,
                         doctor_name,
                         id_patient1,
                         patient_name1,
                         id_patient2,
                         patient_name2,
                         id_patient3,
                         patient_name3,
                         id_patient4,
                         patient_name4,
                         id_patient5,
                         patient_name5
                     )
                     VALUES (
                         16,
                         '2024-05-23',
                         2,
                         'Leclerc Marie',
                         3,
                         'Mercier Charlotte',
                         1,
                         'Martin Émilie',
                         '',
                         NULL,
                         '',
                         NULL,
                         '',
                         NULL
                     );


-- Tableau : Stay
CREATE TABLE IF NOT EXISTS Stay (
    id_stay          INTEGER      PRIMARY KEY AUTOINCREMENT
                                  NOT NULL,
    stay_reason      TEXT,
    doctor_specialty VARCHAR (50),
    id_doctor        INTEGER,
    doctor_name      VARCHAR (50),
    id_user          INTEGER,
    user_name,
    start_date       DATE,
    end_date         DATE,
    FOREIGN KEY (
        id_doctor
    )
    REFERENCES Doctors (id_doctor),
    FOREIGN KEY (
        id_user
    )
    REFERENCES Users (id_user) 
);

INSERT INTO Stay (
                     id_stay,
                     stay_reason,
                     doctor_specialty,
                     id_doctor,
                     doctor_name,
                     id_user,
                     user_name,
                     start_date,
                     end_date
                 )
                 VALUES (
                     1,
                     'Opération cardiaque programmée',
                     'Cardiologue',
                     1,
                     'Dupont',
                     1,
                     'Martin Émilie',
                     '2024-05-20',
                     '2024-05-25'
                 );

INSERT INTO Stay (
                     id_stay,
                     stay_reason,
                     doctor_specialty,
                     id_doctor,
                     doctor_name,
                     id_user,
                     user_name,
                     start_date,
                     end_date
                 )
                 VALUES (
                     2,
                     'Suivi de l''épilepsie',
                     'Neurologue',
                     2,
                     'Leclerc',
                     2,
                     'Lefèvre Louis',
                     '2024-05-21',
                     '2024-05-26'
                 );

INSERT INTO Stay (
                     id_stay,
                     stay_reason,
                     doctor_specialty,
                     id_doctor,
                     doctor_name,
                     id_user,
                     user_name,
                     start_date,
                     end_date
                 )
                 VALUES (
                     3,
                     'Hospitalisation pour dépression sévère',
                     'Psychiatre',
                     3,
                     'Dubois',
                     3,
                     'Mercier Charlotte',
                     '2024-05-22',
                     '2024-05-27'
                 );

INSERT INTO Stay (
                     id_stay,
                     stay_reason,
                     doctor_specialty,
                     id_doctor,
                     doctor_name,
                     id_user,
                     user_name,
                     start_date,
                     end_date
                 )
                 VALUES (
                     21,
                     'mal',
                     'Cardiologue',
                     1,
                     'Dupont',
                     7,
                     'Jouant Andre',
                     '2024-05-07',
                     '2024-05-11'
                 );

INSERT INTO Stay (
                     id_stay,
                     stay_reason,
                     doctor_specialty,
                     id_doctor,
                     doctor_name,
                     id_user,
                     user_name,
                     start_date,
                     end_date
                 )
                 VALUES (
                     32,
                     'problème de coeur',
                     'Neurologue',
                     2,
                     'Leclerc',
                     7,
                     'Jouant Andre',
                     '2024-05-27',
                     '2024-05-30'
                 );

INSERT INTO Stay (
                     id_stay,
                     stay_reason,
                     doctor_specialty,
                     id_doctor,
                     doctor_name,
                     id_user,
                     user_name,
                     start_date,
                     end_date
                 )
                 VALUES (
                     33,
                     'gros bobo',
                     'Cardiologue',
                     1,
                     'Dupont',
                     7,
                     'Jouant Andre',
                     '2024-05-23',
                     '2024-05-24'
                 );

INSERT INTO Stay (
                     id_stay,
                     stay_reason,
                     doctor_specialty,
                     id_doctor,
                     doctor_name,
                     id_user,
                     user_name,
                     start_date,
                     end_date
                 )
                 VALUES (
                     34,
                     'hépatite',
                     'Cardiologue',
                     1,
                     'Dupont',
                     7,
                     'Jouant Andre',
                     '2024-05-13',
                     '2024-05-18'
                 );

INSERT INTO Stay (
                     id_stay,
                     stay_reason,
                     doctor_specialty,
                     id_doctor,
                     doctor_name,
                     id_user,
                     user_name,
                     start_date,
                     end_date
                 )
                 VALUES (
                     35,
                     'test current stay',
                     'Cardiologue',
                     1,
                     'Dupont',
                     7,
                     'Jouant Andre',
                     '2024-05-20',
                     '2024-05-31'
                 );

INSERT INTO Stay (
                     id_stay,
                     stay_reason,
                     doctor_specialty,
                     id_doctor,
                     doctor_name,
                     id_user,
                     user_name,
                     start_date,
                     end_date
                 )
                 VALUES (
                     36,
                     'test coming stay',
                     'Cardiologue',
                     1,
                     'Dupont',
                     7,
                     'Jouant Andre',
                     '2024-05-29',
                     '2024-05-31'
                 );

INSERT INTO Stay (
                     id_stay,
                     stay_reason,
                     doctor_specialty,
                     id_doctor,
                     doctor_name,
                     id_user,
                     user_name,
                     start_date,
                     end_date
                 )
                 VALUES (
                     37,
                     'test BDD',
                     'Cardiologue',
                     1,
                     'Dupont',
                     7,
                     'Jouant Andre',
                     '2024-05-27',
                     '2024-05-30'
                 );


-- Tableau : Users
CREATE TABLE IF NOT EXISTS Users (
    id_user       INTEGER      NOT NULL
                               PRIMARY KEY AUTOINCREMENT,
    last_name     VARCHAR (50),
    name          VARCHAR (50),
    mail          VARCHAR (80),
    password      VARCHAR (50),
    postal_adress TEXT (400),
    admin         VARCHAR (5),
    secretary     VARCHAR (5),
    doctor        VARCHAR (5) 
);

INSERT INTO Users (
                      id_user,
                      last_name,
                      name,
                      mail,
                      password,
                      postal_adress,
                      admin,
                      secretary,
                      doctor
                  )
                  VALUES (
                      1,
                      'Martin',
                      'Émilie',
                      'emiliemartin@example.com',
                      'motdepasse123',
                      '123 Rue Fouret, Nantes, France',
                      'false',
                      'false',
                      NULL
                  );

INSERT INTO Users (
                      id_user,
                      last_name,
                      name,
                      mail,
                      password,
                      postal_adress,
                      admin,
                      secretary,
                      doctor
                  )
                  VALUES (
                      2,
                      'Lefèvre',
                      'Louis',
                      'louislefevre@example.com',
                      'motdepasse456',
                      '456 Rue Elm, Lorient, France',
                      'false',
                      'false',
                      NULL
                  );

INSERT INTO Users (
                      id_user,
                      last_name,
                      name,
                      mail,
                      password,
                      postal_adress,
                      admin,
                      secretary,
                      doctor
                  )
                  VALUES (
                      3,
                      'Mercier',
                      'Charlotte',
                      'charlottemercier@example.com',
                      'motdepasse789',
                      '789 Rue Chêne, Lyon, France',
                      'false',
                      'false',
                      NULL
                  );

INSERT INTO Users (
                      id_user,
                      last_name,
                      name,
                      mail,
                      password,
                      postal_adress,
                      admin,
                      secretary,
                      doctor
                  )
                  VALUES (
                      4,
                      'Martin',
                      'Marie',
                      'marie.martin@example.com',
                      'motdepasse44',
                      '456 Avenue des Champs-Élysées, Paris',
                      'false',
                      'true',
                      NULL
                  );

INSERT INTO Users (
                      id_user,
                      last_name,
                      name,
                      mail,
                      password,
                      postal_adress,
                      admin,
                      secretary,
                      doctor
                  )
                  VALUES (
                      5,
                      'Pesquier',
                      'Paul',
                      'paul.pesquier@example.com',
                      'motdepasse56',
                      '123 Rue de la Paix, Paris',
                      'true',
                      'false',
                      NULL
                  );

INSERT INTO Users (
                      id_user,
                      last_name,
                      name,
                      mail,
                      password,
                      postal_adress,
                      admin,
                      secretary,
                      doctor
                  )
                  VALUES (
                      7,
                      'Jouant',
                      'Andre',
                      'andre_jouan@yahoo.fr',
                      '$2b$10$PaHPS.naMxFC6X28m4PMWuBOjqgVaPyoOLpNJTThgOfQTN9Nh/2mO',
                      '45 rue du paradis',
                      'true',
                      'true',
                      'true'
                  );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
