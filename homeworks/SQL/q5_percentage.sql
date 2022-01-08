SELECT  cast(premiered / 10 * 10 AS text) || 's' AS decade
       ,round(cast(COUNT() AS real) / (SELECT  COUNT() FROM titles) * 100, 4) AS percentage
FROM titles
WHERE premiered is not null
GROUP BY  decade
ORDER BY decade;