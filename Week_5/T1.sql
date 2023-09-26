-- Jatketaan harjoitusten 3 ER-kaavion ja SQL-kannan kaavion (alla) parissa.
-- Tee kysely, joka hakee seuraavat tiedot kaikille rypälelajikkeille (grape), 
-- joiden väri on sininen (blue): Rypälelajikkeen id ja nimi ja rypälelajiketta 
-- sisältävän viinin (wine) id, nimi ja viinitilan (winery) nimi.
SELECT grape.id,
    grape.name,
    wine.id,
    wine.name,
    winery.name
FROM grape,
    wine,
    winery
WHERE grape.color = 'blue'
    AND grape.id = wine.grape_id
    AND wine.winery_id = winery.id;