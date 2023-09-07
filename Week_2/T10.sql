-- Edellisen viikon harjoituksissa  käytettiin product-nimistä taulua. Avaa tietokanta, joka sisältää product-taulun, tai luo taulu ja lisää siihen tietoja SQL-komentotulkilla. (Löydät CREATE TABLE - ja INSERT-lauseet H1 - Tietokantataulu -alikohdan Ohjeita-alisivulta.)
-- Laita ensin SQLitessa viite-eheyden valvonta päälle antamalla komento PRAGMA foreign_keys = ON;
-- Tee luontilause taululle, johon voidaan tallentaa tietoja karkkikaupoista:
--    karkkikaupan tunnus (yksilöivä, kokonaislukutyyppinen)
--    karkkikaupan nimi (yksilöivä)
--    osoite
-- Määrittele tauluun sopivaksi katsomasi pääavain ja avain. Luo taulu komentotulkilla. Lisää tauluun muutaman karkkikaupan tiedot; keksi kauppojen tiedot itse. 
-- Tee luontilause sells-taululle, joka yhdistää tuotteet ja karkkikaupat toisiinsa. Yhdessä karkkikaupassa voidaan myydä useaa eri tuotetta ja samaa tuotetta voidaan myydä useassa eri karkkikaupassa. Luo taulu komentotulkilla ja lisää siihen muutama rivi tietoja.
-- Esitä ratkaisudokumentissasi (*.sql) taulujen luontilauseet ja tietojen lisäyslauseet.
PRAGMA foreign_keys = ON;
CREATE TABLE product (
    id INT,
    name VARCHAR(50) NOT NULL,
    category VARCHAR(30),
    weight INT,
    energy INT,
    PRIMARY KEY (id),
    UNIQUE (name)
);
INSERT INTO product
VALUES (1, 'Fazerina', 'chocolate bar', 37, 548);
INSERT INTO product
VALUES (2, 'Jim', 'chocolate bar', 14, 366);
INSERT INTO product
VALUES (3, 'Salta Katten', 'candy bag', 140, 351);
INSERT INTO product
VALUES (4, 'Dumle mix', 'chocolate bag', 220, 474);
INSERT INTO product
VALUES (
        5,
        'Tupla Double Layer Banana',
        'chocolate bar',
        48,
        471
    );
INSERT INTO product
VALUES (6, 'Bilar Original', 'candy bag', NULL, NULL);
INSERT INTO product
VALUES (7, 'Sisu Horna', 'candy bag', 40, 370);
CREATE TABLE candy_shop (
    candy_shop_id INT,
    candy_shop_name VARCHAR(50) NOT NULL,
    candy_shop_address VARCHAR(50),
    PRIMARY KEY (candy_shop_id),
    UNIQUE (candy_shop_name)
);
INSERT INTO candy_shop
VALUES (1, 'Karkkikauppa', 'Karkkikatu 1');
INSERT INTO candy_shop
VALUES (2, 'Candy Shop', 'Candy Street 2');
INSERT INTO candy_shop
VALUES (3, 'Irtokarkki', 'Karkkikuja 3');
CREATE TABLE sells (
    candy_shop_id INT,
    product_id INT,
    PRIMARY KEY (candy_shop_id, product_id),
    FOREIGN KEY (candy_shop_id) REFERENCES candy_shop(candy_shop_id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);
INSERT INTO sells
VALUES (1, 1);
INSERT INTO sells
VALUES (1, 2);
INSERT INTO sells
VALUES (1, 3);
INSERT INTO sells
VALUES (2, 2);
INSERT INTO sells
VALUES (2, 3);
INSERT INTO sells
VALUES (2, 4);
INSERT INTO sells
VALUES (3, 1);
INSERT INTO sells
VALUES (3, 4);
INSERT INTO sells
VALUES (3, 6);