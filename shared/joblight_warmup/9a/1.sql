SELECT *
FROM movie_keyword mc,
    title t
WHERE t.id=mc.movie_id
AND t.production_year>2005
    AND t.production_year<2015;