-- Hae contains-taulusta eri ainesosien lukumäärä.
-- Tulostaulun sarakenimet:
-- ingredient_count
SELECT COUNT(DISTINCT ingredient_id) AS ingredient_count
FROM contains;