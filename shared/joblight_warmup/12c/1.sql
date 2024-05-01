SELECT *
FROM movie_info mi,
    title t
WHERE mi.info_type_id=3
    AND t.id=mi.movie_id
    AND t.production_year>2000
    AND t.production_year<2010;