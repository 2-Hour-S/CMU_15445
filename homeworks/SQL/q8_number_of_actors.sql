WITH mark_works as
(
	SELECT  title_id
	FROM people
	JOIN crew
	ON people.person_id == crew.person_id AND people.name == "Mark Hamill" AND people.born == 1951
)
SELECT  COUNT(distinct(crew.person_id))
FROM crew
WHERE (crew.category == "actor" OR crew.category == "actress")
AND crew.title_id IN mark_works;