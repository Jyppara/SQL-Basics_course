-- Hae tunnukset ja nimet niille jäätelöille, jotka sisältävät sekä sokeria (Sugar) että vaniljauutetta (Vanilla extract).
-- Lajittele tulostaulun rivit jäätelön tunnuksen perusteella nousevaan järjestykseen.
-- Tulostaulun sarakenimet:
-- ice_cream_id | ice_cream_name
SELECT ice_cream_id,
    ice_cream_name
FROM Ice_cream
WHERE ice_cream_id IN (
        SELECT ice_cream_id
        FROM contains
        WHERE ingredient_id IN (
                SELECT ingredient_id
                FROM Ingredient
                WHERE ingredient_name = 'Sugar'
            )
    )
    AND ice_cream_id IN (
        SELECT ice_cream_id
        FROM contains
        WHERE ingredient_id IN (
                SELECT ingredient_id
                FROM Ingredient
                WHERE ingredient_name = 'Vanilla extract'
            )
    )
ORDER BY ice_cream_id ASC;