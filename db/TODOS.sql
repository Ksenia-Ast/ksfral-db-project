CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(250) NOT NULL UNIQUE,
    password VARCHAR(250) NOT NULL
);

CREATE TABLE todos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    content VARCHAR(100),
    due DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE Produkt (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(15) NOT NULL,
    Preis DECIMAL(2,2) NOT NULL
    );
CREATE TABLE Zutat (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(15) NOT NULL,
    Bestand BOOLEAN
    );
CREATE TABLE ProduktZutaten (
    Produkt_id INT NOT NULL,
    Zutaten_id INT NOT NULL,
    FOREIGN KEY (Produkt_id) REFERENCES Produkt(id)
    FOREIGN KEY (Zutaten_id) REFERENCES Zutaten(id)
    );

CREATE TABLE Bestellungen (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Menge INT NOT NULL,
    Datum DECIMAL(2,2,4)
    Uhrzeit DECIMAL(2,2),
    Produkt_id INT NOT NULL,
    Kunde_id INT NOT NULL,
    FOREIGN KEY (Produkt_id) REFERENCES Produkt(id)
    FOREIGN KEY (Kunde_id) REFERENCES Kunde(id)
    
    );

   
CREATE TABLE Kunde (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL
    Telefonnummer INT(10) NOT NULL
    );

CREATE TABLE Tisch(
    id INT AUTO_INCREMENT PRIMARY KEY,
    AnzPlätze INT(100) NOT NULL,
    Bestand BOOLEAN
    );

CREATE TABLE Mitarbeiter (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(250) NOT NULL UNIQUE,
    password VARCHAR(250) NOT NULL,
    Jahreangestellt INT(100),
    Telefonnummer INT(10) NOT NULL
    Job Varchar(100) Not NULL
    
);
CREATE TABLE Reservierung (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Datum DECIMAL(2,2,4)
    Uhrzeit DECIMAL(2,2),
    Tisch_id INT NOT NULL,
    Kunde_id INT NOT NULL,
    Anzahlprs INT(100)
    FOREIGN KEY (Tisch_id) REFERENCES Tisch(id)
    FOREIGN KEY (Kunde_id) REFERENCES Kunde(id)
    
    );
ksenia

    
     
