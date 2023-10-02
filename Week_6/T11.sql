-- Hae kullekin jäätelölle seuraavat tiedot:
-- tunnus,
-- nimi,
-- valmistuskustannus,
-- valmistajan tunnus,
-- valmistajan valmistamien jäätelöiden lukumäärä ja
-- valmistajan valmistamien jäätelöiden valmistuskustannusten keskiarvo.
-- Lajittele tulostaulun rivit jäätelöiden lukumäärän perusteella laskevaan järjestykseen sekä valmistajan tunnuksen ja  jäätelön tunnuksen perusteella nousevaan järjestykseen.
-- Tulostaulun sarakenimet: ice_cream_id  ,ice_cream_name  ,manufacturing_cost  ,manufacturer_id  ,ice_cream_count  ,avg_costs
SELECT ice_cream.ice_cream_id,
    ice_cream.ice_cream_name,
    ice_cream.manufacturing_cost,
    ice_cream.manufacturer_id,
    manufacturer.ice_cream_count,
    manufacturer.avg_costs
FROM ice_cream
    JOIN (
        SELECT manufacturer.manufacturer_id,
            COUNT(ice_cream.ice_cream_id) AS ice_cream_count,
            AVG(ice_cream.manufacturing_cost) AS avg_costs
        FROM manufacturer
            LEFT JOIN ice_cream ON manufacturer.manufacturer_id = ice_cream.manufacturer_id
        GROUP BY manufacturer.manufacturer_id
    ) manufacturer ON ice_cream.manufacturer_id = manufacturer.manufacturer_id
ORDER BY manufacturer.ice_cream_count DESC,
    ice_cream.manufacturer_id ASC,
    ice_cream.ice_cream_id ASC;