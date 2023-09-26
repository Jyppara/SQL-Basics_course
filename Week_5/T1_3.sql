-- Hae ice_cream-taulusta seuraavat tiedot: jäätelöiden lukumäärä, pienin valmistuskustannus ja suurin valmistuskustannus.
-- Tulostaulun sarakenimet:
-- ice_cream_count | min_cost | max_cost
SELECT COUNT(ice_cream_id) AS ice_cream_count,
    MIN(manufacturing_cost) AS min_cost,
    MAX(manufacturing_cost) AS max_cost
FROM Ice_cream;