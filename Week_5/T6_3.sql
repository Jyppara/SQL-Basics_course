-- Hae kaikille ainesosille seuraavat tiedot: ainesosan tunnus, nimi ja ainesosaa sisältävien jäätelöiden lukumäärä.
-- Lajittele tulosrivit ainesosan tunnuksen mukaan nousevaan järjestykseen.
SELECT Ingredient.ingredient_id,
    Ingredient.ingredient_name,
    COUNT(contains.ingredient_id) AS ice_cream_count
FROM Ingredient
    LEFT JOIN contains ON contains.ingredient_id = Ingredient.ingredient_id
GROUP BY Ingredient.ingredient_id
ORDER BY Ingredient.ingredient_id ASC;