-- Hae tunnukset ja nimet ainesosille, joita mikään jäätelö ei sisällä.
-- Lajittele tulostaulun rivit ainesosan tunnuksen perusteella nousevaan järjestykseen.

SELECT ingredient_id,
    ingredient_name
FROM ingredient
WHERE ingredient_id NOT IN (
        SELECT ingredient_id
        FROM contains
    )
ORDER BY ingredient_id;