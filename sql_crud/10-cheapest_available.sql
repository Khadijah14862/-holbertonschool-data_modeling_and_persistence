SELECT title, price
FROM books
WHERE stock > 0
ORDER BY price ASC, title ASC
LIMIT 4;
