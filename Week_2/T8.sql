-- Hae ainesosien nimet ja niiden jäätelöiden nimet, jotka sisältävät ainesosaa.
-- Tulostaulussa tulee olla mukana myös ne ainesosat, joita mikään jäätelö ei sisällä.
-- Lajittele tulostaulun rivit ainesosan nimen ja jäätelön nimen perusteella nousevaan järjestykseen.

SELECT ingredient.ingredient_name,
    ice_cream.ice_cream_name
FROM ingredient
    LEFT JOIN contains ON ingredient.ingredient_id = contains.ingredient_id
    LEFT JOIN ice_cream ON contains.ice_cream_id = ice_cream.ice_cream_id
ORDER BY ingredient.ingredient_name,
    ice_cream.ice_cream_name;