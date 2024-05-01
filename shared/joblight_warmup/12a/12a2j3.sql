SELECT *
FROM title t,
    movie_companies mc
WHERE t.id=mc.movie_id
    AND t.production_year>2005
    AND t.production_year<2008
    AND mc.company_type_id=2;