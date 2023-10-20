-- Hae kullekin kategorialle
-- kategorian nimi,
-- kategoriaan kuuluvien ryhmäliikuntatuntien lukumäärä,
-- kategoriaan kuuluvien lukujärjestystuntien lukumäärä ja 
-- kategoriaan kuuluvia lukujärjestystunteja ohjaavien eri ohjaajien lukumäärä.
-- Lajittele tulostaulun rivit  nousevaan järjestykseen kategorian nimen perusteella.
-- Tulossarakkeet
-- knimi | rltuntilkm | ljtuntilkm | ohjaajalkm
SELECT kategoria.knimi,
    COUNT(DISTINCT rltunti.rltunnus) AS rltuntilkm,
    COUNT(DISTINCT ljtunti.rltunnus) AS ljtuntilkm,
    COUNT(DISTINCT ohjaaja.otunnus) AS ohjaajalkm
FROM kategoria
    LEFT JOIN rltunti ON rltunti.ktunnus = kategoria.ktunnus
    LEFT JOIN ljtunti ON ljtunti.rltunnus = rltunti.rltunnus
    LEFT JOIN ohjaaja ON ohjaaja.otunnus = ljtunti.otunnus
GROUP BY kategoria.knimi
ORDER BY kategoria.knimi;