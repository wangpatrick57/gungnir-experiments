SELECT *
FROM title t,
    movie_info mi,
WHERE t.id=mi.movie_id
    AND mi.info_type_id=3
    AND t.production_year>2005
    AND t.production_year<2008;