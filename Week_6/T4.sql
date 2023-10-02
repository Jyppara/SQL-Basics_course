-- Hae tunnukset ja nimet valmistajille, joilla ei ole  jäätelöitä ice_cream-taulussa.  Käytä NOT EXISTS-operaattoria.
-- Lajittele tulostaulun rivit nousevaan järjestykseen valmistajan tunnuksen perusteella.
-- Tulostaulun sarakenimet:
-- manufacturer_id | manufacturer_name
SELECT manufacturer_id,
    manufacturer_name
FROM manufacturer
WHERE NOT EXISTS(
        SELECT manufacturer_id
        FROM ice_cream
        WHERE manufacturer_id = manufacturer.manufacturer_id
    )
ORDER BY manufacturer_id ASC;