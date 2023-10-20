--Hae seuraavia tietoja Kehonhuolto-nimiseen kategoriaan kuuluvien ryhmäliikuntatuntien lukujärjestystunneista: 
--viikonpäivä, alkamisaika, ryhmäliikuntatunnin nimi ja kesto.
--Lajittele tulosrivit nousevaan järjestykseen viikonpäivän, alkamisajan ja nimen mukaan. 
--Tulossarakkeet
--viikonpaiva | alkamisaika |  rlnimi   | kesto
SELECT ljtunti.viikonpaiva,
    ljtunti.alkamisaika,
    rltunti.rlnimi,
    rltunti.kesto
FROM ljtunti,
    rltunti,
    kategoria
WHERE ljtunti.rltunnus = rltunti.rltunnus
    AND rltunti.ktunnus = kategoria.ktunnus
    AND kategoria.knimi = 'Kehonhuolto'
ORDER BY ljtunti.viikonpaiva,
    ljtunti.alkamisaika,
    rltunti.rlnimi;