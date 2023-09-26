-- Hae seuraavat tiedot niille valmistajille, joilla on jäätelöitä ice_cream-taulussa: valmistajan tunnus ja nimi sekä valmistajan valmistamien jäätelöiden lukumäärä, pienin valmistuskustannus ja suurin valmistuskustannus.
-- Lajittele tulosrivit valmistajan tunnuksen mukaan nousevaan järjestykseen.
-- Tulostaulun sarakenimet:
-- manufacturer_id | manufacturer_name | ice_cream_count | min_cost | max_cost
SELECT Manufacturer.manufacturer_id,
    Manufacturer.manufacturer_name,
    COUNT(ice_cream_id) AS ice_cream_count,
    MIN(manufacturing_cost) AS min_cost,
    MAX(manufacturing_cost) AS max_cost
FROM Manufacturer
    INNER JOIN Ice_cream ON Ice_cream.manufacturer_id = Manufacturer.manufacturer_id
GROUP BY Manufacturer.manufacturer_id
ORDER BY Manufacturer.manufacturer_id ASC;