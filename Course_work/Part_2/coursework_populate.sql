-- Tässä tiedostossa lisätään tietokantaan tietoa
-- Kategorioita
INSERT INTO kategoria
VALUES(1, 'Lihaskunto');
INSERT INTO kategoria
VALUES(2, 'Kehonhuolto');
INSERT INTO kategoria
VALUES(3, 'Spinning');
-- Ryhmäliikuntatunteja
INSERT INTO rltunti
VALUES(1, 'Muokkaus', 'Muokataan lihaksia', 45, 2, 1);
INSERT INTO rltunti
VALUES(
        2,
        'Joogan perusteet',
        'Opetellaan joogaa',
        50,
        1,
        2
    );
INSERT INTO rltunti
VALUES(3, 'Jooga 1', 'Jatketaan joogaamista', 50, 2, 2);
INSERT INTO rltunti
VALUES(4, 'Pilates 1', 'Opetellaan pilatesta', 60, 2, 2);
INSERT INTO rltunti
VALUES(5, 'Spinning alkeet', 'Poljetaan', 60, 1, 3);
INSERT INTO rltunti
VALUES(
        6,
        'Spinning pro',
        'Raskaita osuuksia ja tiukkoja spurtteja',
        80,
        4,
        3
    );
-- Saleja
INSERT INTO sali
VALUES(1, 'Sali 1', 25);
INSERT INTO sali
VALUES(2, 'Spinning-sali', 20);
INSERT INTO sali
VALUES(3, 'Sali 3', 20);
-- Ohjaajia
INSERT INTO ohjaaja
VALUES(1, 'Elisa Markkanen', '1996-01-21');
INSERT INTO ohjaaja
VALUES(2, 'Eero Ilonen', '1988-03-14');
INSERT INTO ohjaaja
VALUES(3, 'Mikko Kontinen', '2000-11-01');
-- Ohjaaja voi ohjata ryhmäliikuntatunteja
INSERT INTO voi_ohjata
VALUES(1, 3);
INSERT INTO voi_ohjata
VALUES(1, 5);
INSERT INTO voi_ohjata
VALUES(1, 6);
INSERT INTO voi_ohjata
VALUES(2, 2);
INSERT INTO voi_ohjata
VALUES(2, 3);
INSERT INTO voi_ohjata
VALUES(2, 4);
INSERT INTO voi_ohjata
VALUES(3, 5);
INSERT INTO voi_ohjata
VALUES(3, 6);
-- Lukujärjestystunteja
INSERT INTO ljtunti
VALUES(3, 'Maanantai', '8:10', '9:00', 10, 1, 3);
INSERT INTO ljtunti
VALUES(3, 'Maanantai', '13:00', '13:50', 15, 1, 1);
INSERT INTO ljtunti
VALUES(3, 'Maanantai', '20:10', '21:00', 10, 1, 3);
INSERT INTO ljtunti
VALUES(3, 'Tiistai', '8:10', '9:00', 15, 2, 1);
INSERT INTO ljtunti
VALUES(4, 'Maanantai', '8:00', '9:00', 15, 2, 1);
INSERT INTO ljtunti
VALUES(6, 'Maanantai', '7:00', '8:20', 20, 3, 2);
INSERT INTO ljtunti
VALUES(5, 'Maanantai', '10:45', '11:45', 20, 3, 2);
INSERT INTO ljtunti
VALUES(6, 'Perjantai', '14:00', '15:20', 20, 1, 2);