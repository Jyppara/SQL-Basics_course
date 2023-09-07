SELECT manufacturer_name,
    ice_cream_name,
    ingredient_name
FROM manufacturer,
    ice_cream,
    ingredient,
    contains
WHERE manufacturer.manufacturer_id = ice_cream.manufacturer_id
    AND ice_cream.ice_cream_id = contains.ice_cream_id
    AND ingredient.ingredient_id = contains.ingredient_id
ORDER BY manufacturer_name,
    ice_cream_name,
    ingredient_name;