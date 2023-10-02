-- Hae nimi, valmistuskustannus ja valmistajan nimi jäätelölle, jolla on suurin valmistuskustannus.
-- Tulostaulun sarakenimet:
-- ice_cream_name | manufacturing_cost  | manufacturer_name
SELECT ice_cream_name,
    manufacturing_cost,
    manufacturer_name
FROM ice_cream
    INNER JOIN manufacturer ON ice_cream.manufacturer_id = manufacturer.manufacturer_id
WHERE manufacturing_cost IN(
        SELECT MAX(manufacturing_cost)
        FROM ice_cream
    )
ORDER BY ice_cream_name ASC;