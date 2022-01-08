-- SELECT  primary_title
--        ,COUNT() AS cnt
-- FROM titles
-- JOIN akas
-- ON titles.title_id == akas.title_id
-- GROUP BY  titles.title_id
-- ORDER BY cnt desc
-- LIMIT 10;

WITH translations AS
(
	SELECT  title_id
	       ,COUNT(*) AS num_translations
	FROM akas
	GROUP BY  title_id
	ORDER BY num_translations DESC
	         ,title_id
	LIMIT 10
)
SELECT  titles.primary_title
       ,translations.num_translations
FROM translations
JOIN titles
ON titles.title_id == translations.title_id
ORDER BY translations.num_translations DESC ;

--这个写法比注释了的写法快很多