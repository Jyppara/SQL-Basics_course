--Hae seuraavat tiedot lyhimmälle ryhmäliikuntatunnille: tunnin nimi ja kesto. 
--Lajittele tulosrivit nousevaan järjestykseen tunnin nimen perusteella.
--Tulossarakkeet
--rlnimi | kesto
SELECT rltunti.rlnimi,
    MIN(rltunti.kesto) AS kesto
FROM rltunti;