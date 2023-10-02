-- Hae tunnukset ja nimet valmistajille, joilla on yksi tai useampi jäätelö ice_cream-taulussa. Käytä EXISTS-operaattoria.
-- Lajittele tulostaulun rivit nousevaan järjestykseen valmistajan tunnuksen perusteella.
-- Tulostaulun sarakenimet:
-- manufacturer_id | manufacturer_name
SELECT manufacturer_id,
    manufacturer_name
FROM manufacturer
WHERE EXISTS (
        SELECT manufacturer_id
        FROM ice_cream
        WHERE manufacturer_id = manufacturer.manufacturer_id
    )
ORDER BY manufacturer_id ASC;