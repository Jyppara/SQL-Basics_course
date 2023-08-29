SELECT category, energy, name
FROM product
WHERE energy < 500
ORDER BY category, energy DESC