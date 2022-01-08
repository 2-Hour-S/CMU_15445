WITH mark_movies AS
(
	SELECT  crew.title_id
	FROM people
	JOIN crew
	ON people.person_id == crew.person_id AND people.name == "Mark Hamill" AND people.born == 1951
)
SELECT  titles.primary_title
FROM crew
JOIN people
ON crew.person_id == people.person_id AND people.name == "George Lucas" AND people.born == 1944 AND crew.title_id IN mark_movies
JOIN titles
ON titles.title_id == crew.title_id AND titles.type == "movie"
ORDER BY titles.primary_title;