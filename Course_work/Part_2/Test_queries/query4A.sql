-- Hae kullekin kategorialle
-- nimi,
-- kategoriaan kuuluvien ryhmäliikuntatuntien lukumäärä,
-- minimikesto ja
-- maksimikesto.
-- Lajittele tulostaulun rivit  nousevaan järjestykseen kategorian nimen perusteella.
-- Tulossarakkeet
-- knimi | lkm | minkesto | maxkesto
SELECT kategoria.knimi,
    COUNT(rltunti.rltunnus) AS lkm,
    MIN(rltunti.kesto) AS minkesto,
    MAX(rltunti.kesto) AS maxkesto
FROM kategoria,
    rltunti
WHERE rltunti.ktunnus = kategoria.ktunnus
GROUP BY kategoria.knimi
ORDER BY kategoria.knimi;