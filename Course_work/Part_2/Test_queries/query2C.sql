--Hae seuraavat tiedot lyhimmälle Kehonhuolto-nimiseen kategoriaan kuuluvalle ryhmäliikuntatunnille: tunnin nimi, kesto ja tunnin kategorian nimi.
--Lajittele tulostaulun rivit nousevaan järjestykseen tunnin nimen perusteella.
--Tulossarakkeet
--rlnimi | kesto | knimi
SELECT rltunti.rlnimi,
    rltunti.kesto,
    kategoria.knimi
FROM rltunti,
    kategoria
WHERE rltunti.ktunnus = kategoria.ktunnus
    AND kategoria.knimi = 'Kehonhuolto'
    AND rltunti.kesto = (
        SELECT MIN(rltunti.kesto)
        FROM rltunti,
            kategoria
        WHERE rltunti.ktunnus = kategoria.ktunnus
            AND kategoria.knimi = 'Kehonhuolto'
    )
ORDER BY rltunti.rlnimi;