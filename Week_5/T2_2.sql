-- Hae italialaisten ja suomalaisten valmistajien nimet. Käytä kyselyssäsi IN-operaattoria.
-- Lajittele tulosrivit valmistajan nimen mukaan nousevaan järjestykseen.

-- Tulostaulun sarakenimet:
-- manufacturer_name

SELECT manufacturer_name
FROM Manufacturer
WHERE manufacturer.country IN ('Italy', 'Finland')
ORDER BY manufacturer_name ASC;