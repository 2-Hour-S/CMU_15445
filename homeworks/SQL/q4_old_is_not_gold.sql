SELECT  CAST(premiered / 10 * 10 AS text) || 's' AS decade
       ,COUNT()
FROM titles
WHERE premiered is not null
GROUP BY  decade
ORDER BY decade;