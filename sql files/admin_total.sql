

IF EXISTS(SELECT energy from earlymorning_total WHERE (code = new.code) AND (date = new.date)) THEN
    SET new.energy = new.energy+ (SELECT energy from earlymorning_total WHERE (code = new.code) AND (date = new.date)),
    new.carbs = new.carbs+ (SELECT carbs from earlymorning_total WHERE (code = new.code) AND (date = new.date)),
    new.proteins = new.proteins+ (SELECT proteins from earlymorning_total WHERE (code = new.code) AND (date = new.date)),
    new.fats = new.fats+ (SELECT fats from earlymorning_total WHERE (code = new.code) AND (date = new.date)),
    new.fibres = new.fibres+ (SELECT fibres from earlymorning_total WHERE (code = new.code) AND (date = new.date)),
    new.Cereal = new.Cereal+ (SELECT IFNULL(Cereal,0) from earlymorning_total WHERE (code = new.code) AND (date = new.date)),
    new.Fat = new.Fat+ (SELECT IFNULL(Fat,0) from earlymorning_total WHERE (code = new.code) AND (date = new.date)),
    new.fruits = new.fruits+ (SELECT IFNULL(fruits,0) from earlymorning_total WHERE (code = new.code) AND (date = new.date)),
    new.milk = new.milk+ (SELECT IFNULL(milk,0) from earlymorning_total WHERE (code = new.code) AND (date = new.date)),
    new.Nuts = new.Nuts+ (SELECT IFNULL(Nuts,0) from earlymorning_total WHERE (code = new.code) AND (date = new.date)),
    new.pulses = new.pulses+ (SELECT IFNULL(pulses,0) from earlymorning_total WHERE (code = new.code) AND (date = new.date)),
    new.sugar = new.sugar+ (SELECT IFNULL(sugar,0) from earlymorning_total WHERE (code = new.code) AND (date = new.date)),
    new.vegetables = new.vegetables+ (SELECT IFNULL(vegetables,0) from earlymorning_total WHERE (code = new.code) AND (date = new.date)),
    new.Water = new.Water+ (SELECT IFNULL(Water,0) from earlymorning_total WHERE (code = new.code) AND (date = new.date));


IF EXISTS(SELECT energy from breakfast_total WHERE (code = new.code) AND (date = new.date)) THEN
    SET new.energy = new.energy + (SELECT energy from breakfast_total WHERE (code = new.code) AND (date = new.date)),
    new.carbs = new.carbs+ (SELECT carbs from breakfast_total WHERE (code = new.code) AND (date = new.date)),
    new.proteins = new.proteins+ (SELECT proteins from breakfast_total WHERE (code = new.code) AND (date = new.date)),
    new.fats = new.fats+ (SELECT fats from breakfast_total WHERE (code = new.code) AND (date = new.date)),
    new.fibres = new.fibres+ (SELECT fibres from breakfast_total WHERE (code = new.code) AND (date = new.date)),
    new.Cereal = new.Cereal+ (SELECT IFNULL(Cereal,0) from breakfast_total WHERE (code = new.code) AND (date = new.date)),
    new.Fat = new.Fat+ (SELECT IFNULL(Fat,0) from breakfast_total WHERE (code = new.code) AND (date = new.date)),
    new.fruits = new.fruits+ (SELECT IFNULL(fruits,0) from breakfast_total WHERE (code = new.code) AND (date = new.date)),
    new.milk = new.milk+ (SELECT IFNULL(milk,0) from breakfast_total WHERE (code = new.code) AND (date = new.date)),
    new.Nuts = new.Nuts+ (SELECT IFNULL(Nuts,0) from breakfast_total WHERE (code = new.code) AND (date = new.date)),
    new.pulses = new.pulses+ (SELECT IFNULL(pulses,0) from breakfast_total WHERE (code = new.code) AND (date = new.date)),
    new.sugar = new.sugar+ (SELECT IFNULL(sugar,0) from breakfast_total WHERE (code = new.code) AND (date = new.date)),
    new.vegetables = new.vegetables+ (SELECT IFNULL(vegetables,0) from breakfast_total WHERE (code = new.code) AND (date = new.date)),
    new.Water = new.Water+ (SELECT IFNULL(Water,0) from breakfast_total WHERE (code = new.code) AND (date = new.date));



IF EXISTS(SELECT energy from mid_morning_total WHERE (code = new.code) AND (date = new.date)) THEN
    SET new.energy = new.energy + (SELECT energy from mid_morning_total WHERE (code = new.code) AND (date = new.date)),
    new.carbs = new.carbs+ (SELECT carbs from mid_morning_total WHERE (code = new.code) AND (date = new.date)),
    new.proteins = new.proteins+ (SELECT proteins from mid_morning_total WHERE (code = new.code) AND (date = new.date)),
    new.fats = new.fats+ (SELECT fats from mid_morning_total WHERE (code = new.code) AND (date = new.date)),
    new.fibres = new.fibres+ (SELECT fibres from mid_morning_total WHERE (code = new.code) AND (date = new.date)),
    new.Cereal = new.Cereal+ (SELECT IFNULL(Cereal,0) from mid_morning_total WHERE (code = new.code) AND (date = new.date)),
    new.Fat = new.Fat+ (SELECT IFNULL(Fat,0) from mid_morning_total WHERE (code = new.code) AND (date = new.date)),
    new.fruits = new.fruits+ (SELECT IFNULL(fruits,0) from mid_morning_total WHERE (code = new.code) AND (date = new.date)),
    new.milk = new.milk+ (SELECT IFNULL(milk,0) from mid_morning_total WHERE (code = new.code) AND (date = new.date)),
    new.Nuts = new.Nuts+ (SELECT IFNULL(Nuts,0) from mid_morning_total WHERE (code = new.code) AND (date = new.date)),
    new.pulses = new.pulses+ (SELECT IFNULL(pulses,0) from mid_morning_total WHERE (code = new.code) AND (date = new.date)),
    new.sugar = new.sugar+ (SELECT IFNULL(sugar,0) from mid_morning_total WHERE (code = new.code) AND (date = new.date)),
    new.vegetables = new.vegetables+ (SELECT IFNULL(vegetables,0) from mid_morning_total WHERE (code = new.code) AND (date = new.date)),
    new.Water = new.Water+ (SELECT IFNULL(Water,0) from mid_morning_total WHERE (code = new.code) AND (date = new.date));


IF EXISTS(SELECT energy from lunch_total WHERE (code = new.code) AND (date = new.date)) THEN
    SET new.energy = new.energy + (SELECT energy from lunch_total WHERE (code = new.code) AND (date = new.date)),
    new.carbs = new.carbs+ (SELECT carbs from lunch_total WHERE (code = new.code) AND (date = new.date)),
    new.proteins = new.proteins+ (SELECT proteins from lunch_total WHERE (code = new.code) AND (date = new.date)),
    new.fats = new.fats+ (SELECT fats from lunch_total WHERE (code = new.code) AND (date = new.date)),
    new.fibres = new.fibres+ (SELECT fibres from lunch_total WHERE (code = new.code) AND (date = new.date)),
    new.Cereal = new.Cereal+ (SELECT IFNULL(Cereal,0) from lunch_total WHERE (code = new.code) AND (date = new.date)),
    new.Fat = new.Fat+ (SELECT IFNULL(Fat,0) from lunch_total WHERE (code = new.code) AND (date = new.date)),
    new.fruits = new.fruits+ (SELECT IFNULL(fruits,0) from lunch_total WHERE (code = new.code) AND (date = new.date)),
    new.milk = new.milk+ (SELECT IFNULL(milk,0) from lunch_total WHERE (code = new.code) AND (date = new.date)),
    new.Nuts = new.Nuts+ (SELECT IFNULL(Nuts,0) from lunch_total WHERE (code = new.code) AND (date = new.date)),
    new.pulses = new.pulses+ (SELECT IFNULL(pulses,0) from lunch_total WHERE (code = new.code) AND (date = new.date)),
    new.sugar = new.sugar+ (SELECT IFNULL(sugar,0) from lunch_total WHERE (code = new.code) AND (date = new.date)),
    new.vegetables = new.vegetables+ (SELECT IFNULL(vegetables,0) from lunch_total WHERE (code = new.code) AND (date = new.date)),
    new.Water = new.Water+ (SELECT IFNULL(Water,0) from lunch_total WHERE (code = new.code) AND (date = new.date));


IF EXISTS(SELECT energy from evening_snack_total WHERE (code = new.code) AND (date = new.date)) THEN
    SET new.energy = new.energy + (SELECT energy from evening_snack_total WHERE (code = new.code) AND (date = new.date)),
    new.carbs = new.carbs+ (SELECT carbs from evening_snack_total WHERE (code = new.code) AND (date = new.date)),
    new.proteins = new.proteins+ (SELECT proteins from evening_snack_total WHERE (code = new.code) AND (date = new.date)),
    new.fats = new.fats+ (SELECT fats from evening_snack_total WHERE (code = new.code) AND (date = new.date)),
    new.fibres = new.fibres+ (SELECT fibres from evening_snack_total WHERE (code = new.code) AND (date = new.date)),
    new.Cereal = new.Cereal+ (SELECT IFNULL(Cereal,0) from evening_snack_total WHERE (code = new.code) AND (date = new.date)),
    new.Fat = new.Fat+ (SELECT IFNULL(Fat,0) from evening_snack_total WHERE (code = new.code) AND (date = new.date)),
    new.fruits = new.fruits+ (SELECT IFNULL(fruits,0) from evening_snack_total WHERE (code = new.code) AND (date = new.date)),
    new.milk = new.milk+ (SELECT IFNULL(milk,0) from evening_snack_total WHERE (code = new.code) AND (date = new.date)),
    new.Nuts = new.Nuts+ (SELECT IFNULL(Nuts,0) from evening_snack_total WHERE (code = new.code) AND (date = new.date)),
    new.pulses = new.pulses+ (SELECT IFNULL(pulses,0) from evening_snack_total WHERE (code = new.code) AND (date = new.date)),
    new.sugar = new.sugar+ (SELECT IFNULL(sugar,0) from evening_snack_total WHERE (code = new.code) AND (date = new.date)),
    new.vegetables = new.vegetables+ (SELECT IFNULL(vegetables,0) from evening_snack_total WHERE (code = new.code) AND (date = new.date)),
    new.Water = new.Water+ (SELECT IFNULL(Water,0) from evening_snack_total WHERE (code = new.code) AND (date = new.date));


IF EXISTS(SELECT energy from dinner_total WHERE (code = new.code) AND (date = new.date)) THEN
    SET new.energy = new.energy + (SELECT energy from dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.carbs = new.carbs+ (SELECT carbs from dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.proteins = new.proteins+ (SELECT proteins from dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.fats = new.fats+ (SELECT fats from dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.fibres = new.fibres+ (SELECT fibres from dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.Cereal = new.Cereal+ (SELECT IFNULL(Cereal,0) from dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.Fat = new.Fat+ (SELECT IFNULL(Fat,0) from dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.fruits = new.fruits+ (SELECT IFNULL(fruits,0) from dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.milk = new.milk+ (SELECT IFNULL(milk,0) from dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.Nuts = new.Nuts+ (SELECT IFNULL(Nuts,0) from dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.pulses = new.pulses+ (SELECT IFNULL(pulses,0) from dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.sugar = new.sugar+ (SELECT IFNULL(sugar,0) from dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.vegetables = new.vegetables+ (SELECT IFNULL(vegetables,0) from dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.Water = new.Water+ (SELECT IFNULL(Water,0) from dinner_total WHERE (code = new.code) AND (date = new.date));


IF EXISTS(SELECT energy from post_dinner_total WHERE (code = new.code) AND (date = new.date)) THEN
    SET new.energy = new.energy + (SELECT energy from post_dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.carbs = new.carbs+ (SELECT carbs from post_dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.proteins = new.proteins+ (SELECT proteins from post_dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.fats = new.fats+ (SELECT fats from post_dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.fibres = new.fibres+ (SELECT fibres from post_dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.Cereal = new.Cereal+ (SELECT IFNULL(Cereal,0) from post_dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.Fat = new.Fat+ (SELECT IFNULL(Fat,0) from post_dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.fruits = new.fruits+ (SELECT IFNULL(fruits,0) from post_dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.milk = new.milk+ (SELECT IFNULL(milk,0) from post_dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.Nuts = new.Nuts+ (SELECT IFNULL(Nuts,0) from post_dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.pulses = new.pulses+ (SELECT IFNULL(pulses,0) from post_dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.sugar = new.sugar+ (SELECT IFNULL(sugar,0) from post_dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.vegetables = new.vegetables+ (SELECT IFNULL(vegetables,0) from post_dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.Water = new.Water+ (SELECT IFNULL(Water,0) from post_dinner_total WHERE (code = new.code) AND (date = new.date));


END IF;
END IF;

END IF;
END IF;

END IF;
END IF;

END IF;
