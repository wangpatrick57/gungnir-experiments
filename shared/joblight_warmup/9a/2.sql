SELECT *
FROM title t,
    cast_info ci
WHERE t.id=ci.movie_id AND t.production_year>2005
    AND t.production_year<2015
    AND ci.role_id=2;