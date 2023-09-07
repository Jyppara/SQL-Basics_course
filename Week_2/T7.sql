-- Hae valmistajien tunnukset ja nimet sekä niiden valmistamien jäätelöiden tunnukset ja nimet.
-- Tulostaulussa tulee olla mukana myös ne valmistajat,
-- joiden valmistamia jäätelöitä ei ole tietokannassa.Lajittele tulostaulun rivit valmistajan tunnuksen
-- ja jäätelön tunnuksen perusteella nousevaan järjestykseen.

SELECT manufacturer.manufacturer_id,
    manufacturer.manufacturer_name,
    ice_cream.ice_cream_id,
    ice_cream.ice_cream_name
FROM manufacturer
LEFT JOIN ice_cream ON manufacturer.manufacturer_id = ice_cream.manufacturer_id
ORDER BY manufacturer.manufacturer_id,
    ice_cream.ice_cream_id;