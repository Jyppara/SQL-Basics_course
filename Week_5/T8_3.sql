-- Hae seuraavat tiedot jäätelöille, jotka sisältävät vain kahta ainesosaa: jäätelön tunnus, nimi ja valmistajan nimi.
-- Lajittele tulosrivit jäätelön tunnuksen mukaan nousevaan järjestykseen.
-- Tulostaulun sarakenimet:
-- ice_cream_id | ice_cream_name | manufacturer_name
SELECT ice_cream_id,
    ice_cream_name,
    manufacturer_name
FROM Ice_cream
    LEFT JOIN Manufacturer ON Manufacturer.manufacturer_id = Ice_cream.manufacturer_id
WHERE Ice_cream.ice_cream_id IN (
        SELECT ice_cream_id
        FROM contains
        GROUP BY ice_cream_id
        HAVING COUNT(ingredient_id) = 2
    )
ORDER BY Ice_cream.ice_cream_id ASC;