SELECT *
FROM title t,
    movie_info_idx mi_idx
WHERE t.id=mi_idx.movie_id AND
 mi_idx.info_type_id=101 AND
 t.production_year>1950 AND t.production_year<2000;