SET new.energy = (SELECT energy from earlymorning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT energy from breakfast_total WHERE (code = new.code) AND (date = new.date)) + (SELECT energy from mid_morning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT energy from lunch_total WHERE (code = new.code) AND (date = new.date)) + (SELECT energy from evening_snack_total WHERE (code = new.code) AND (date = new.date)) + (SELECT energy from dinner_total WHERE (code = new.code) AND (date = new.date)) + (SELECT energy from post_dinner_total WHERE (code = new.code) AND (date = new.date)) ,

new.carbs = (SELECT carbs from earlymorning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT carbs from breakfast_total WHERE (code = new.code) AND (date = new.date)) + (SELECT carbs from mid_morning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT carbs from lunch_total WHERE (code = new.code) AND (date = new.date)) + (SELECT carbs from evening_snack_total WHERE (code = new.code) AND (date = new.date)) + (SELECT carbs from dinner_total WHERE (code = new.code) AND (date = new.date)) + (SELECT carbs from post_dinner_total WHERE (code = new.code) AND (date = new.date)) ,

new.proteins = (SELECT proteins from earlymorning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT proteins from breakfast_total WHERE (code = new.code) AND (date = new.date)) + (SELECT proteins from mid_morning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT proteins from lunch_total WHERE (code = new.code) AND (date = new.date)) + (SELECT proteins from evening_snack_total WHERE (code = new.code) AND (date = new.date)) + (SELECT proteins from dinner_total WHERE (code = new.code) AND (date = new.date)) + (SELECT proteins from post_dinner_total WHERE (code = new.code) AND (date = new.date)) ,

new.fats = (SELECT fats from earlymorning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fats from breakfast_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fats from mid_morning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fats from lunch_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fats from evening_snack_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fats from dinner_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fats from post_dinner_total WHERE (code = new.code) AND (date = new.date)) ,

new.fibres = (SELECT fibres from earlymorning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fibres from breakfast_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fibres from mid_morning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fibres from lunch_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fibres from evening_snack_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fibres from dinner_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fibres from post_dinner_total WHERE (code = new.code) AND (date = new.date)) ,

new.Cereal = (SELECT Cereal from earlymorning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Cereal from breakfast_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Cereal from mid_morning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Cereal from lunch_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Cereal from evening_snack_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Cereal from dinner_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Cereal from post_dinner_total WHERE (code = new.code) AND (date = new.date)) ,

new.Fat = (SELECT Fat from earlymorning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Fat from breakfast_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Fat from mid_morning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Fat from lunch_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Fat from evening_snack_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Fat from dinner_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Fat from post_dinner_total WHERE (code = new.code) AND (date = new.date)) ,

new.fruits = (SELECT fruits from earlymorning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fruits from breakfast_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fruits from mid_morning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fruits from lunch_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fruits from evening_snack_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fruits from dinner_total WHERE (code = new.code) AND (date = new.date)) + (SELECT fruits from post_dinner_total WHERE (code = new.code) AND (date = new.date)) ,

new.milk = (SELECT milk from earlymorning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT milk from breakfast_total WHERE (code = new.code) AND (date = new.date)) + (SELECT milk from mid_morning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT milk from lunch_total WHERE (code = new.code) AND (date = new.date)) + (SELECT milk from evening_snack_total WHERE (code = new.code) AND (date = new.date)) + (SELECT milk from dinner_total WHERE (code = new.code) AND (date = new.date)) + (SELECT milk from post_dinner_total WHERE (code = new.code) AND (date = new.date)) ,

new.Nuts = (SELECT Nuts from earlymorning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Nuts from breakfast_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Nuts from mid_morning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Nuts from lunch_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Nuts from evening_snack_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Nuts from dinner_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Nuts from post_dinner_total WHERE (code = new.code) AND (date = new.date)) ,

new.pulses = (SELECT pulses from earlymorning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT pulses from breakfast_total WHERE (code = new.code) AND (date = new.date)) + (SELECT pulses from mid_morning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT pulses from lunch_total WHERE (code = new.code) AND (date = new.date)) + (SELECT pulses from evening_snack_total WHERE (code = new.code) AND (date = new.date)) + (SELECT pulses from dinner_total WHERE (code = new.code) AND (date = new.date)) + (SELECT pulses from post_dinner_total WHERE (code = new.code) AND (date = new.date)) ,

new.sugar = (SELECT sugar from earlymorning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT sugar from breakfast_total WHERE (code = new.code) AND (date = new.date)) + (SELECT sugar from mid_morning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT sugar from lunch_total WHERE (code = new.code) AND (date = new.date)) + (SELECT sugar from evening_snack_total WHERE (code = new.code) AND (date = new.date)) + (SELECT sugar from dinner_total WHERE (code = new.code) AND (date = new.date)) + (SELECT sugar from post_dinner_total WHERE (code = new.code) AND (date = new.date)) ,

new.vegetables = (SELECT vegetables from earlymorning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT vegetables from breakfast_total WHERE (code = new.code) AND (date = new.date)) + (SELECT vegetables from mid_morning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT vegetables from lunch_total WHERE (code = new.code) AND (date = new.date)) + (SELECT vegetables from evening_snack_total WHERE (code = new.code) AND (date = new.date)) + (SELECT vegetables from dinner_total WHERE (code = new.code) AND (date = new.date)) + (SELECT vegetables from post_dinner_total WHERE (code = new.code) AND (date = new.date)) ,

new.Water = (SELECT Water from earlymorning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Water from breakfast_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Water from mid_morning_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Water from lunch_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Water from evening_snack_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Water from dinner_total WHERE (code = new.code) AND (date = new.date)) + (SELECT Water from post_dinner_total WHERE (code = new.code) AND (date = new.date)) ;



IF EXISTS(SELECT energy from earlymorning_total WHERE (code = new.code) AND (date = new.date)) THEN
    SET new.energy = new.energy+ (SELECT energy from earlymorning_total WHERE (code = new.code) AND (date = new.date)),
    new.carbs = new.carbs+ (SELECT carbs from earlymorning_total WHERE (code = new.code) AND (date = new.date)),
    new.proteins = new.proteins+ (SELECT proteins from earlymorning_total WHERE (code = new.code) AND (date = new.date)),
    new.fats = new.fats+ (SELECT fats from earlymorning_total WHERE (code = new.code) AND (date = new.date)),
    new.fibres = new.fibres+ (SELECT fibres from earlymorning_total WHERE (code = new.code) AND (date = new.date));

IF EXISTS(SELECT energy from breakfast_total WHERE (code = new.code) AND (date = new.date)) THEN
    SET new.energy = new.energy + (SELECT energy from breakfast_total WHERE (code = new.code) AND (date = new.date)),
    new.carbs = new.carbs+ (SELECT carbs from breakfast_total WHERE (code = new.code) AND (date = new.date)),
    new.proteins = new.proteins+ (SELECT proteins from breakfast_total WHERE (code = new.code) AND (date = new.date)),
    new.fats = new.fats+ (SELECT fats from breakfast_total WHERE (code = new.code) AND (date = new.date)),
    new.fibres = new.fibres+ (SELECT fibres from breakfast_total WHERE (code = new.code) AND (date = new.date));

IF EXISTS(SELECT energy from mid_morning_total WHERE (code = new.code) AND (date = new.date)) THEN
    SET new.energy = new.energy + (SELECT energy from mid_morning_total WHERE (code = new.code) AND (date = new.date)),
    new.carbs = new.carbs+ (SELECT carbs from mid_morning_total WHERE (code = new.code) AND (date = new.date)),
    new.proteins = new.proteins+ (SELECT proteins from mid_morning_total WHERE (code = new.code) AND (date = new.date)),
    new.fats = new.fats+ (SELECT fats from mid_morning_total WHERE (code = new.code) AND (date = new.date)),
    new.fibres = new.fibres+ (SELECT fibres from mid_morning_total WHERE (code = new.code) AND (date = new.date));

IF EXISTS(SELECT energy from lunch_total WHERE (code = new.code) AND (date = new.date)) THEN
    SET new.energy = new.energy + (SELECT energy from lunch_total WHERE (code = new.code) AND (date = new.date)),
    new.carbs = new.carbs+ (SELECT carbs from lunch_total WHERE (code = new.code) AND (date = new.date)),
    new.proteins = new.proteins+ (SELECT proteins from lunch_total WHERE (code = new.code) AND (date = new.date)),
    new.fats = new.fats+ (SELECT fats from lunch_total WHERE (code = new.code) AND (date = new.date)),
    new.fibres = new.fibres+ (SELECT fibres from lunch_total WHERE (code = new.code) AND (date = new.date));

IF EXISTS(SELECT energy from evening_snack_total WHERE (code = new.code) AND (date = new.date)) THEN
    SET new.energy = new.energy + (SELECT energy from evening_snack_total WHERE (code = new.code) AND (date = new.date)),
    new.carbs = new.carbs+ (SELECT carbs from evening_snack_total WHERE (code = new.code) AND (date = new.date)),
    new.proteins = new.proteins+ (SELECT proteins from evening_snack_total WHERE (code = new.code) AND (date = new.date)),
    new.fats = new.fats+ (SELECT fats from evening_snack_total WHERE (code = new.code) AND (date = new.date)),
    new.fibres = new.fibres+ (SELECT fibres from evening_snack_total WHERE (code = new.code) AND (date = new.date));

IF EXISTS(SELECT energy from dinner_total WHERE (code = new.code) AND (date = new.date)) THEN
    SET new.energy = new.energy + (SELECT energy from dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.carbs = new.carbs+ (SELECT carbs from dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.proteins = new.proteins+ (SELECT proteins from dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.fats = new.fats+ (SELECT fats from dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.fibres = new.fibres+ (SELECT fibres from dinner_total WHERE (code = new.code) AND (date = new.date));

IF EXISTS(SELECT energy from post_dinner_total WHERE (code = new.code) AND (date = new.date)) THEN
    SET new.energy = new.energy + (SELECT energy from post_dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.carbs = new.carbs+ (SELECT carbs from post_dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.proteins = new.proteins+ (SELECT proteins from post_dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.fats = new.fats+ (SELECT fats from post_dinner_total WHERE (code = new.code) AND (date = new.date)),
    new.fibres = new.fibres+ (SELECT fibres from post_dinner_total WHERE (code = new.code) AND (date = new.date));

END IF;
END IF;

END IF;
END IF;

END IF;
END IF;

END IF;
