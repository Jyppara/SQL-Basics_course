-- Hae suomalaisten ja italialaisten valmistajien jäätelöille seuraavat tiedot: jäätelön nimi, valmistajan nimi ja valmistajan maa.
-- Lajittele tulostaulun rivit valmistajan nimen ja jäätelön nimen perusteella nousevaan järjestykseen.
-- Tulostaulun sarakenimet:
-- ice_cream_name|manufacturer_name|country
SELECT ice_cream_name,
    manufacturer_name,
    country
FROM ice_cream,
    manufacturer
WHERE ice_cream.manufacturer_id = manufacturer.manufacturer_id
    AND (
        country = 'Finland'
        OR country = 'Italy'
    )
ORDER BY manufacturer_name ASC,
    ice_cream_name ASC;