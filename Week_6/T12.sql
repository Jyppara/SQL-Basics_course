-- Hae kaikki jäätelöiden nimet, jotka sisältävät merkkijonon "Vanilla".
-- Lajittele tulosrivit jäätelön nimen mukaan nousevaan järjestykseen.
-- Tulostaulun sarakenimet:
-- ice_cream_name
SELECT ice_cream_name
FROM ice_cream
WHERE ice_cream_name LIKE '%Vanilla%';