create temporary table numbers as (
  select 1 as n
  union select 2 as n
  union select 3 as n
  ...
)

create temporary table numbers as (
  select 1 as n
);


select 
  recipe_id, 
  substring_index(
    substring_index(possible_measurements, ',', n), 
    ',',
    -1
  ) as email
from recipes
join numbers
  on char_length(possible_measurements) 
    - char_length(replace(possible_measurements, ',', '')) 
    >= n - 1