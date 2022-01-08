WITH c
(weighted_average_rating
) as(
SELECT  SUM(rating * votes) / SUM(votes)
FROM ratings
JOIN titles
ON titles.title_id == ratings.title_id AND titles.type == "movie" )
SELECT  primary_title
       ,votes / (votes + 25000.0) * rating + (25000 / (votes + 25000)) * c.weighted_average_rating AS wr
FROM ratings, c
JOIN titles
ON titles.title_id == ratings.title_id AND titles.type == "movie"
ORDER BY wr DESC
LIMIT 250;