IF (new.unit = 'Small' OR new.unit = 'Medium' OR new.unit = 'Large'  OR new.unit = 'Cup' OR new.unit = 'Tea Cup'OR new.unit = 'Piece' ) THEN

        SET new.energy = (SELECT energy_kcal FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) , 
        new.carbs = (SELECT carbohydrate FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) , 
        new.proteins = (SELECT protein FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) , 
        new.fats = (SELECT visiblefat FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) , 
        new.fibres = (SELECT total_fibre FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) , 
        new.Cereal = (SELECT Cereal FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) , 
        new.Fat = (SELECT Fat FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) , 
        new.fruits = (SELECT fruits FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) , 
        new.milk = (SELECT milk FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) , 
        new.Nuts = (SELECT Nuts FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) , 
        new.pulses = (SELECT pulses FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) , 
        new.sugar = (SELECT sugar FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) , 
        new.vegetables = (SELECT vegetables FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) , 
        new.Water = (SELECT Water FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) ;



        
ELSE 

        SET new.energy = (SELECT energy_kcal FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) /   (SELECT serving_measurements FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ), 
        new.carbs = (SELECT carbohydrate FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) /   (SELECT serving_measurements FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ), 
        new.proteins = (SELECT protein FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) /   (SELECT serving_measurements FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ), 
        new.fats = (SELECT visiblefat FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) /   (SELECT serving_measurements FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ), 
        new.fibres = (SELECT total_fibre FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) /   (SELECT serving_measurements FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ), 
        new.Cereal = (SELECT Cereal FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) /   (SELECT serving_measurements FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ), 
        new.Fat = (SELECT Fat FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) /   (SELECT serving_measurements FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ), 
        new.fruits = (SELECT fruits FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) /   (SELECT serving_measurements FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ), 
        new.milk = (SELECT milk FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) /   (SELECT serving_measurements FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ), 
        new.Nuts = (SELECT Nuts FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) /   (SELECT serving_measurements FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ), 
        new.pulses = (SELECT pulses FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) /   (SELECT serving_measurements FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ), 
        new.sugar = (SELECT sugar FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) /   (SELECT serving_measurements FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ), 
        new.vegetables = (SELECT vegetables FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) /   (SELECT serving_measurements FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ), 
        new.Water = (SELECT Water FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (new.qty) /   (SELECT serving_measurements FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) );



END IF;