-- Hae tunnukset ja nimet ohjaajille, jotka ohjaavat kaikkien niiden ryhmäliikuntatuntien lukujärjestystunteja, joita he voivat ohjata.
-- Lajittele tulostaulun rivit  nousevaan järjestykseen ohjaajan tunnuksen perusteella.
-- Tulossarakkeet
-- otunnus | onimi
SELECT ohjaaja.otunnus,
    ohjaaja.onimi
FROM ohjaaja
WHERE NOT EXISTS (
        SELECT rltunti.rltunnus
        FROM rltunti
            LEFT JOIN voi_ohjata ON voi_ohjata.rltunnus = rltunti.rltunnus
        WHERE voi_ohjata.otunnus = ohjaaja.otunnus
            AND rltunti.rltunnus NOT IN (
                SELECT ljtunti.rltunnus
                FROM ljtunti
            )
    )
ORDER BY ohjaaja.otunnus;