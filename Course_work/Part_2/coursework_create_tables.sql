-- Tässä tiedostossa luodaan tietokannan taulut
-- Viite-eheyden valvonta päälle
PRAGMA foreign_keys = ON;
-- Ryhmäliikuntatunti = rltunti
-- Lukujärjestystunti = ljtunti
CREATE TABLE rltunti (
    rltunnus INT NOT NULL,
    rlnimi VARCHAR(30),
    kuvaus VARCHAR(100),
    kesto INT,
    taso INT,
    ktunnus INT,
    PRIMARY KEY (rltunnus),
    FOREIGN KEY (ktunnus) REFERENCES kategoria(ktunnus),
    UNIQUE (rlnimi)
);
CREATE TABLE kategoria(
    ktunnus INT NOT NULL,
    knimi VARCHAR(30),
    PRIMARY KEY (ktunnus),
    UNIQUE (knimi)
);
CREATE TABLE voi_ohjata (
    otunnus INT NOT NULL,
    rltunnus INT NOT NULL,
    FOREIGN KEY (otunnus) REFERENCES ohjaaja(otunnus),
    FOREIGN KEY (rltunnus) REFERENCES rltunti(rltunnus),
    PRIMARY KEY (otunnus, rltunnus)
);
CREATE TABLE ohjaaja(
    otunnus INT NOT NULL,
    onimi VARCHAR(30),
    syntymaaika DATE,
    PRIMARY KEY (otunnus)
);
CREATE TABLE ljtunti(
    rltunnus INT NOT NULL,
    viikonpaiva VARCHAR(10),
    alkamisaika VARCHAR(5),
    paattymisaika VARCHAR(5),
    maxosallistujalkm INT,
    otunnus INT,
    stunnus INT,
    PRIMARY KEY (rltunnus, viikonpaiva, alkamisaika),
    FOREIGN KEY (rltunnus) REFERENCES rltunti(rltunnus),
    FOREIGN KEY (otunnus) REFERENCES ohjaaja(otunnus),
    FOREIGN KEY (stunnus) REFERENCES sali(stunnus)
);
CREATE TABLE sali(
    stunnus INT NOT NULL,
    snimi VARCHAR(30),
    paikkalkm INT,
    PRIMARY KEY (stunnus),
    UNIQUE (snimi)
);