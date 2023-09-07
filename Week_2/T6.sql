-- Hae tunnukset ja nimet niille ainesosille, jota ainakin yksi jäätelö sisältää.  Ainesosien tunnukset ja nimet halutaan tulostauluun vain kertaalleen. 
-- Lajittele tulostaulun rivit ainesosan tunnuksen perusteella nousevaan järjestykseen.

SELECT DISTINCT ingredient.ingredient_id,
    ingredient.ingredient_name
FROM ingredient,
    contains
WHERE ingredient.ingredient_id = contains.ingredient_id
ORDER BY ingredient.ingredient_id;