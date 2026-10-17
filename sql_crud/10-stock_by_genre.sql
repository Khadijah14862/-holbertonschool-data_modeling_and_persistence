SELECT genre, SUM(stock)
FROM books
GROUP BY genre
ORDER BY genre ASC;
