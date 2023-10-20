--Hae seuraavia tietoja Kehonhuolto-nimiseen kategoriaan kuuluvien ryhmäliikuntatuntien lukujärjestystunneista, joiden viikonpäivä on ti (tiistai lyhennettynä merkkijonoksi ti) tai kesto 50 minuuttia: 
--viikonpäivä, alkamisaika, ryhmäliikuntatunnin nimi, kesto ja vaikeustaso.
--Lajittele tulosrivit nousevaan järjestykseen viikonpäivän, alkamisajan ja nimen mukaan.
--Tulossarakkeet
--viikonpaiva | alkamisaika | rlnimi | kesto | taso
SELECT ljtunti.viikonpaiva,
    ljtunti.alkamisaika,
    rltunti.rlnimi,
    rltunti.kesto,
    rltunti.taso
FROM ljtunti,
    rltunti
WHERE ljtunti.rltunnus = rltunti.rltunnus
    AND (
        ljtunti.viikonpaiva = 'Tiistai'
        OR rltunti.kesto = 50
    )
ORDER BY ljtunti.viikonpaiva,
    ljtunti.alkamisaika,
    rltunti.rlnimi;