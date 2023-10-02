-- Hae kullekin valmistajalle tunnus, nimi, jäätelöiden lukumäärä ja jäätelöissä käytettävien eri ainesosien lukumäärä.
-- Lajittele tulostaulun rivit nousevaan järjestykseen valmistajan tunnuksen perusteella.
-- Tulostaulun sarakenimet:
-- manufacturer_id | manufacturer_name | ice_creams | ingredients
SELECT manufacturer.manufacturer_id,
    manufacturer.manufacturer_name,
    COUNT(DISTINCT ice_cream.ice_cream_id) AS ice_creams,
    COUNT(DISTINCT contains.ingredient_id) AS ingredients
FROM manufacturer
    LEFT JOIN ice_cream ON manufacturer.manufacturer_id = ice_cream.manufacturer_id
    LEFT JOIN contains ON ice_cream.ice_cream_id = contains.ice_cream_id
GROUP BY manufacturer.manufacturer_id
ORDER BY manufacturer.manufacturer_id ASC;