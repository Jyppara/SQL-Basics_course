-- Hae tunnukset ja nimet valmistajille, joilla ei ole  jäätelöitä ice_cream-taulussa. Käytä NOT IN-operaattoria.
-- Lajittele tulostaulun rivit nousevaan järjestykseen valmistajan tunnuksen perusteella.
-- Tulostaulun sarakenimet:
-- manufacturer_id | manufacturer_name
SELECT manufacturer_id,
    manufacturer_name
FROM Manufacturer
WHERE manufacturer_id NOT IN (
        SELECT manufacturer_id
        FROM Ice_cream
    )
ORDER BY manufacturer_id;