SET new.energy = (SELECT energy from earlymorning_total) + (SELECT energy from breakfast_total) + (SELECT energy from mid_morning_total) + (SELECT energy from lunch_total) + (SELECT energy from evening_snack_total) + (SELECT energy from dinner_total) + (SELECT energy from post_dinner_total) ,

new.carbs = (SELECT carbs from earlymorning_total) + (SELECT carbs from breakfast_total) + (SELECT carbs from mid_morning_total) + (SELECT carbs from lunch_total) + (SELECT carbs from evening_snack_total) + (SELECT carbs from dinner_total) + (SELECT carbs from post_dinner_total) ,

new.proteins = (SELECT proteins from earlymorning_total) + (SELECT proteins from breakfast_total) + (SELECT proteins from mid_morning_total) + (SELECT proteins from lunch_total) + (SELECT proteins from evening_snack_total) + (SELECT proteins from dinner_total) + (SELECT proteins from post_dinner_total) ,

new.fats = (SELECT fats from earlymorning_total) + (SELECT fats from breakfast_total) + (SELECT fats from mid_morning_total) + (SELECT fats from lunch_total) + (SELECT fats from evening_snack_total) + (SELECT fats from dinner_total) + (SELECT fats from post_dinner_total) ,

new.fibres = (SELECT fibres from earlymorning_total) + (SELECT fibres from breakfast_total) + (SELECT fibres from mid_morning_total) + (SELECT fibres from lunch_total) + (SELECT fibres from evening_snack_total) + (SELECT fibres from dinner_total) + (SELECT fibres from post_dinner_total) ,

new.Cereal = (SELECT Cereal from earlymorning_total) + (SELECT Cereal from breakfast_total) + (SELECT Cereal from mid_morning_total) + (SELECT Cereal from lunch_total) + (SELECT Cereal from evening_snack_total) + (SELECT Cereal from dinner_total) + (SELECT Cereal from post_dinner_total) ,

new.Fat = (SELECT Fat from earlymorning_total) + (SELECT Fat from breakfast_total) + (SELECT Fat from mid_morning_total) + (SELECT Fat from lunch_total) + (SELECT Fat from evening_snack_total) + (SELECT Fat from dinner_total) + (SELECT Fat from post_dinner_total) ,

new.fruits = (SELECT fruits from earlymorning_total) + (SELECT fruits from breakfast_total) + (SELECT fruits from mid_morning_total) + (SELECT fruits from lunch_total) + (SELECT fruits from evening_snack_total) + (SELECT fruits from dinner_total) + (SELECT fruits from post_dinner_total) ,

new.milk = (SELECT milk from earlymorning_total) + (SELECT milk from breakfast_total) + (SELECT milk from mid_morning_total) + (SELECT milk from lunch_total) + (SELECT milk from evening_snack_total) + (SELECT milk from dinner_total) + (SELECT milk from post_dinner_total) ,

new.Nuts = (SELECT Nuts from earlymorning_total) + (SELECT Nuts from breakfast_total) + (SELECT Nuts from mid_morning_total) + (SELECT Nuts from lunch_total) + (SELECT Nuts from evening_snack_total) + (SELECT Nuts from dinner_total) + (SELECT Nuts from post_dinner_total) ,

new.pulses = (SELECT pulses from earlymorning_total) + (SELECT pulses from breakfast_total) + (SELECT pulses from mid_morning_total) + (SELECT pulses from lunch_total) + (SELECT pulses from evening_snack_total) + (SELECT pulses from dinner_total) + (SELECT pulses from post_dinner_total) ,

new.sugar = (SELECT sugar from earlymorning_total) + (SELECT sugar from breakfast_total) + (SELECT sugar from mid_morning_total) + (SELECT sugar from lunch_total) + (SELECT sugar from evening_snack_total) + (SELECT sugar from dinner_total) + (SELECT sugar from post_dinner_total) ,

new.vegetables = (SELECT vegetables from earlymorning_total) + (SELECT vegetables from breakfast_total) + (SELECT vegetables from mid_morning_total) + (SELECT vegetables from lunch_total) + (SELECT vegetables from evening_snack_total) + (SELECT vegetables from dinner_total) + (SELECT vegetables from post_dinner_total) ,

new.Water = (SELECT Water from earlymorning_total) + (SELECT Water from breakfast_total) + (SELECT Water from mid_morning_total) + (SELECT Water from lunch_total) + (SELECT Water from evening_snack_total) + (SELECT Water from dinner_total) + (SELECT Water from post_dinner_total) ;
