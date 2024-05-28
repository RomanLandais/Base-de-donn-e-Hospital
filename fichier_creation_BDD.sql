CREATE TABLE Consultations (
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


--------------------------------------------------------------------------------------
CREATE TABLE Doctors (
    id_doctor INTEGER      NOT NULL
                           PRIMARY KEY AUTOINCREMENT,
    last_name VARCHAR (50),
    name      VARCHAR (50),
    specialty VARCHAR (50) 
);



--------------------------------------------------------------------------------------

CREATE TABLE Prescription (
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


--------------------------------------------------------------------------------------

CREATE TABLE Schedule (
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

--------------------------------------------------------------------------------------

CREATE TABLE Stay (
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




--------------------------------------------------------------------------------------

CREATE TABLE Users (
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



--------------------------------------------------------------------------------------




