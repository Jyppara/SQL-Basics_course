-- Hae niiden valmistajien nimet, joiden jäätelöiden valmistuskustannusten keskiarvo on suurempi kuin kaikkien jäätelöiden valmistuskustannusten keskiarvo.
-- Tulostaulun sarakenimet:
-- manufacturer_name
SELECT manufacturer_name
FROM manufacturer
WHERE manufacturer_id IN(
        SELECT manufacturer_id
        FROM ice_cream
        GROUP BY manufacturer_id
        HAVING AVG(manufacturing_cost) > (
                SELECT AVG(manufacturing_cost)
                FROM ice_cream
            )
    )
ORDER BY manufacturer_name ASC;