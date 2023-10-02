-- Hae nimi ja valmistuskustannus jäätelölle, jolla on suurin valmistuskustannus.
-- Tulostaulun sarakenimet:
-- ice_cream_name | manufacturing_cost
SELECT ice_cream_name,
    manufacturing_cost
FROM ice_cream
WHERE manufacturing_cost IN(
        SELECT MAX(manufacturing_cost)
        FROM ice_cream
    )
ORDER BY ice_cream_name ASC;