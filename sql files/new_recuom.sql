
DECLARE x INT;
set x = (SELECT COUNT(recipe_id) from rec_measure WHERE recipe_id = new.recipe_id);
declare y int;
 y = 1;

while y < x+1 do 

    IF( (SELECT rec_uom_name from rec_measure WHERE corr =y) = (SELECT uom_name from recipe_ingreinfo WHERE recipe_id = new.recipe_id) ) THEN

        insert into recipe_uom (recipe_id,recipe_uom_name,rec_uom_value)
        values
        ( new.recipe_id,SELECT uom_name from recipe_ingreinfo WHERE recipe_id = new.recipe_id, SELECT uom_value from recipe_ingreinfo WHERE recipe_id = new.recipe_id);

    ELSE

        insert into recipe_uom (recipe_id,recipe_uom_name)
        values
        (new.recipe_id,SELECT rec_uom_name from rec_measure WHERE corr =y );

    END IF;

    set y=y+1;

end while;