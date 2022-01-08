WITH t
(type, runtime_minutes
) as(
SELECT  type
       ,MAX(runtime_minutes)
FROM titles
GROUP BY  type)
SELECT  titles.type
       ,primary_title
       ,titles.runtime_minutes
FROM titles
JOIN t
ON titles.runtime_minutes == t.runtime_minutes AND titles.type == t.type
ORDER BY titles.type, primary_title;