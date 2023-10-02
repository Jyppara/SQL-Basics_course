-- Hae nimet niille jäätelöille, joiden valmistuskustannus on 1 ja 1.4 välillä. Hyödynnä BETWEEN-operaattoria.
-- Lajittele tulosrivit jäätelön nimen mukaan nousevaan järjestykseen.
-- Tulostaulun sarakenimet:
-- ice_cream_name
SELECT ice_cream_name
FROM ice_cream
WHERE manufacturing_cost BETWEEN 1 AND 1.4;