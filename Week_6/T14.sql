-- Hae kunkin jäätelön nimi sekä valmistuskustannus 10 % korotettuna.
-- Lajittele tulosrivit jäätelön nimen mukaan nousevaan järjestykseen.
SELECT ice_cream_name,
    manufacturing_cost * 1.1 AS increased_cost
FROM ice_cream
ORDER BY ice_cream_name;