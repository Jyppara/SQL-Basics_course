SELECT ohjaaja.otunnus,
    ohjaaja.onimi
FROM ohjaaja
WHERE ohjaaja.otunnus IN (
        SELECT voi_ohjata.otunnus
        FROM voi_ohjata
        WHERE voi_ohjata.rltunnus IN (
                SELECT rltunti.rltunnus
                FROM rltunti
                WHERE rltunti.ktunnus IN (
                        SELECT kategoria.ktunnus
                        FROM kategoria
                        WHERE kategoria.knimi = 'Spinning'
                    )
            )
    )
    AND ohjaaja.otunnus IN (
        SELECT voi_ohjata.otunnus
        FROM voi_ohjata
        WHERE voi_ohjata.rltunnus IN (
                SELECT rltunti.rltunnus
                FROM rltunti
                WHERE rltunti.ktunnus IN (
                        SELECT kategoria.ktunnus
                        FROM kategoria
                        WHERE kategoria.knimi = 'Kehonhuolto'
                    )
            )
    )
ORDER BY ohjaaja.onimi;