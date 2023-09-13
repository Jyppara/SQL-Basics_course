-- Hae elokuvan ja sen seuraajan nimi. Tulostauluun otetaan mukaan myös ne elokuvat, joilla ei ole seuraajaa.
-- Lajittele tulostaulun rivit nousevaan järjestykseen elokuvan id:n perusteella.
SELECT M1.name,
    M2.name AS sequel_name
FROM Movie M1
    LEFT JOIN Movie M2 ON M1.id = M2.predecessor_id
ORDER BY M1.id ASC;