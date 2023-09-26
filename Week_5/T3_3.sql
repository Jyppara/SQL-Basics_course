-- Hae contains-taulusta jäätelöiden lukumäärät jokaista eri ainesosaa kohden.
-- Lajittele tulosrivit ainesosan tunnuksen  mukaan nousevaan järjestykseen.
-- Tulostaulun sarakenimet:
-- ingredient_id | count
SELECT ingredient_id,
    COUNT(ingredient_id) AS count
FROM contains
GROUP BY ingredient_id
ORDER BY ingredient_id ASC;