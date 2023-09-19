-- Hae tunnukset, nimet, kcal-määrät (kcal) ja proteiinimäärät (protein) niille ainesosille (ingredient), jotka sisältävät yli 300 kcal tai jotka eivät sisällä proteiinia.
-- Tulostauluun ei kuitenkaan haluta mukaan sellaisia ainesosia, jotka sisältävät yli 300 kcal ja jotka eivät sisällä proteiinia.
-- Lajittele tulostaulun rivit ainesosan tunnuksen perusteella nousevaan järjestykseen.
-- Tulostaulun sarakenimet:
-- ingredient_id|ingredient_name|kcal|protein
SELECT ingredient_id,
    ingredient_name,
    kcal,
    protein
FROM Ingredient
WHERE kcal > 300
    AND protein != 0
    OR protein = 0
    AND kcal <= 300
ORDER BY ingredient_id ASC;