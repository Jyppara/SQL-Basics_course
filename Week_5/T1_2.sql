-- Hae ingredient-taulusta eri proteiinimäärät (protein).
-- Kukin eri proteiinimäärä esiintyy tulostaulussa vain kerran.
-- Lajittele tulostaulun rivit nousevaan järjestykseen proteiinimäärän perusteella.

SELECT DISTINCT protein
FROM Ingredient
ORDER BY protein ASC;