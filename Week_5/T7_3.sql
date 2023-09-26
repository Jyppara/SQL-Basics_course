-- Hae seuraavat tiedot jäätelöille, jotka sisältävät vain kahta ainesosaa: jäätelön tunnus ja nimi.
-- Lajittele tulosrivit jäätelön tunnuksen mukaan nousevaan järjestykseen.
-- Tulostaulun sarakenimet:
-- ice_cream_id | ice_cream_name
SELECT Ice_cream.ice_cream_id,
    Ice_cream.ice_cream_name
FROM Ice_cream
WHERE Ice_cream.ice_cream_id IN (
        SELECT ice_cream_id
        FROM contains
        GROUP BY ice_cream_id
        HAVING COUNT(ingredient_id) = 2
    )
ORDER BY Ice_cream.ice_cream_id ASC;