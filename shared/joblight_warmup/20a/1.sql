SELECT *
FROM movie_keyword mk,
    title t
WHERE t.id=mk.movie_id
AND mk.keyword_id=398
AND t.production_year>1950
AND t.production_year<2000;