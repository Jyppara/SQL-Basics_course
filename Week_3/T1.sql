-- Hae elokuvan ja sen edeltäjän nimi. Tulostauluun otetaan mukaan ainoastaan ne elokuvat, joilla on edeltäjä. 
-- Lajittele tulostaulun rivit nousevaan järjestykseen elokuvan id:n perusteella.
SELECT M2.name,
    M1.name AS predecessor_name
FROM Movie M1,
    Movie M2
WHERE M1.id = M2.predecessor_id
ORDER BY M1.id ASC;