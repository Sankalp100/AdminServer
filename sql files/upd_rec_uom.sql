IF ((new.rec_uom_name = 'Gram' OR new.rec_uom_name = 'ML') AND new.rec_uom_value = 1) THEN

        SET new.serving_measurements = 1 ,
        new.rec_name = (SELECT recipe_name FROM recipes WHERE recipe_id = new.recipe_id),
        new.energy_kj = (SELECT energy_kj FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.energy_kcal = (SELECT energy_kcal FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.carbohydrate = (SELECT carbohydrate FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.protein = (SELECT protein FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.total_fibre = (SELECT total_fibre FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.solublf = (SELECT solublf FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.in_solublf = (SELECT in_solublf FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.invisible_totalfat = (SELECT invisible_totalfat FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.visiblefat = (SELECT visiblefat FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.thiamine = (SELECT thiamine FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.riboflavin = (SELECT riboflavin FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.niacin = (SELECT niacin FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.biotin = (SELECT biotin FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.folates = (SELECT folates FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.ascorbic_Acid = (SELECT ascorbic_Acid FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.vitamin_d2d3 = (SELECT vitamin_d2d3 FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.calcium = (SELECT calcium FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.phosphorous = (SELECT phosphorous FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.iron = (SELECT iron FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.sodium = (SELECT sodium FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.potassium = (SELECT potassium FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.zinc = (SELECT zinc FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.magnesium = (SELECT magnesium FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.sfa = (SELECT sfa FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),


        new.Cereal = (SELECT Cereal FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),

        new.Fat = (SELECT Fat FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),

        new.fruits = (SELECT fruits FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),

        new.milk = (SELECT milk FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),

        new.Nuts = (SELECT Nuts FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),

        new.pulses = (SELECT pulses FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),

        new.sugar = (SELECT sugar FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),

        new.vegetables = (SELECT vegetables FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),

        new.Water = (SELECT Water FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id);



ELSE        
        SET new.serving_measurements = (new.rec_uom_value) * (SELECT serving_measurements FROM recipe_ingreinfo WHERE recipe_id = new.recipe_id) / (SELECT uom_value FROM recipe_ingreinfo WHERE recipe_id = new.recipe_id ),

         new.rec_name = (SELECT recipe_name FROM recipes WHERE recipe_id = new.recipe_id),
        new.energy_kj = (SELECT energy_kj FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.energy_kcal = (SELECT energy_kcal FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.carbohydrate = (SELECT carbohydrate FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.protein = (SELECT protein FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.total_fibre = (SELECT total_fibre FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.solublf = (SELECT solublf FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.in_solublf = (SELECT in_solublf FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.invisible_totalfat = (SELECT invisible_totalfat FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.visiblefat = (SELECT visiblefat FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.thiamine = (SELECT thiamine FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.riboflavin = (SELECT riboflavin FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.niacin = (SELECT niacin FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.biotin = (SELECT biotin FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.folates = (SELECT folates FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.ascorbic_Acid = (SELECT ascorbic_Acid FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.vitamin_d2d3 = (SELECT vitamin_d2d3 FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.calcium = (SELECT calcium FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.phosphorous = (SELECT phosphorous FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.iron = (SELECT iron FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.sodium = (SELECT sodium FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.potassium = (SELECT potassium FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.zinc = (SELECT zinc FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.magnesium = (SELECT magnesium FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),
        new.sfa = (SELECT sfa FROM total_recipe WHERE recipe_id = new.recipe_id) * (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),


        new.Cereal = (SELECT Cereal FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),

        new.Fat = (SELECT Fat FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),

        new.fruits = (SELECT fruits FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),

        new.milk = (SELECT milk FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),

        new.Nuts = (SELECT Nuts FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),

        new.pulses = (SELECT pulses FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),

        new.sugar = (SELECT sugar FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),

        new.vegetables = (SELECT vegetables FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id),

        new.Water = (SELECT Water FROM total_recipe WHERE recipe_id = new.recipe_id) *  (new.serving_measurements) / (SELECT serving_measurements FROM total_recipe WHERE recipe_id = new.recipe_id);

END IF;
