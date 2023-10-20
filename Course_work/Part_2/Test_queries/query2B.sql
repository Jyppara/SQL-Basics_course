--Hae seuraavat tiedot lyhimmälle ryhmäliikuntatunnille: tunnin nimi, kesto ja tunnin kategorian nimi.
--Lajittele tulostaulun rivit nousevaan järjestykseen tunnin nimen perusteella.
--Tulossarakkeet
--rlnimi | kesto | knimi
SELECT rltunti.rlnimi,
    MIN(rltunti.kesto) AS kesto,
    kategoria.knimi
FROM rltunti,
    kategoria
WHERE rltunti.ktunnus = kategoria.ktunnus
ORDER BY kategoria.knimi;