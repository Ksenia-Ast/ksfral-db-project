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
CREATE TABLE Produkt/Zutaten (
    Produkt_id INT NOT NULL,
    Zutaten_id INT NOT NULL,
    FOREIGN KEY (Produkt_id) REFERENCES Produkt(id)
    FOREIGN KEY (Zutaten_id) REFERENCES Zutaten(id)
    );


    
     
