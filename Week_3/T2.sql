-- Hae elokuvan ja sen edeltäjän nimi. Tulostauluun otetaan mukaan myös ne elokuvat, joilla ei ole edeltäjää. 
-- Lajittele tulostaulun rivit nousevaan järjestykseen elokuvan id:n perusteella.
SELECT M2.name,
    M1.name AS predecessor_name
FROM Movie M2
    LEFT JOIN Movie M1 ON M1.id = M2.predecessor_id
ORDER BY M1.id ASC;