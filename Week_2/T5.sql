-- Hae nimet niille jäätelöille, jotka sisältävät vaniljauutetta (Vanilla extract).
-- Lajittele tulostaulun rivit jäätelön nimen perusteella nousevaan järjestykseen.

SELECT ice_cream_name
FROM ice_cream,
    ingredient,
    contains
WHERE ice_cream.ice_cream_id = contains.ice_cream_id
    AND ingredient.ingredient_id = contains.ingredient_id
    AND ingredient.ingredient_name = 'Vanilla extract'
ORDER BY ice_cream_name;