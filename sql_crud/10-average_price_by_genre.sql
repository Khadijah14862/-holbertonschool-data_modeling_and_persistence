SELECT genre, AVG(price)
FROM books
GROUP BY genre
ORDER BY genre ASC;
