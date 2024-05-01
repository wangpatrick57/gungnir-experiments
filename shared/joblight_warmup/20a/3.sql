SELECT *
FROM title t,
    movie_companies mc
WHERE t.id=mc.movie_id AND
t.production_year>1950 AND t.production_year<2000;

