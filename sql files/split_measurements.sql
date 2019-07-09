


    CREATE OR REPLACE VIEW generator_16
AS  SELECT 1 n  UNION ALL SELECT 2  UNION ALL
  SELECT 3   UNION ALL SELECT 4  UNION ALL SELECT 5  UNION ALL
  SELECT 6   UNION ALL SELECT 7  UNION ALL SELECT 8  UNION ALL
  SELECT 9   UNION ALL SELECT 10 UNION ALL SELECT 11 UNION ALL
  SELECT 12  UNION ALL SELECT 13 UNION ALL SELECT 14 UNION ALL
  SELECT 15;

select recipe_id, substring_index( substring_index(possible_measurements, ',', n), ',', -1) as rec_uom_name
from recipes
join generator_16 AS tempo
  on char_length(possible_measurements) - char_length(replace(possible_measurements, ',', '')) >= n - 1  ;

INSERT INTO rec_poss (recipe_id,rec_uom_name) VALUES (recipe_id,rec_uom_name) from tempo Where recipe_id = 9;
