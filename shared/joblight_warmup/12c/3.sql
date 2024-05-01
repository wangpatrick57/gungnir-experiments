SELECT *
FROM title t,
    movie_companies mc
WHERE t.id=mc.movie_id 
    AND mc.company_type_id=2
    AND t.production_year>2000
    AND t.production_year<2010;

