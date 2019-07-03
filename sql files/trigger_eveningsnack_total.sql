SET new.energy = (SELECT SUM(energy) FROM evening_snack_details WHERE (code = new.code) AND (date = new.date)),
new.carbs = (SELECT SUM(carbs) FROM evening_snack_details WHERE (code = new.code) AND (date = new.date)),
new.proteins = (SELECT SUM(proteins) FROM evening_snack_details WHERE (code = new.code) AND (date = new.date)),
new.fats = (SELECT SUM(fats) FROM evening_snack_details WHERE (code = new.code) AND (date = new.date)),
new.fibres = (SELECT SUM(fibres) FROM evening_snack_details WHERE (code = new.code) AND (date = new.date)),
new.Cereal = (SELECT SUM(Cereal) FROM evening_snack_details WHERE (code = new.code) AND (date = new.date)),
new.Fat = (SELECT SUM(Fat) FROM evening_snack_details WHERE (code = new.code) AND (date = new.date)),
new.fruits = (SELECT SUM(fruits) FROM evening_snack_details WHERE (code = new.code) AND (date = new.date)),
new.milk = (SELECT SUM(milk) FROM evening_snack_details WHERE (code = new.code) AND (date = new.date)),
new.Nuts = (SELECT SUM(Nuts) FROM evening_snack_details WHERE (code = new.code) AND (date = new.date)),
new.pulses = (SELECT SUM(pulses) FROM evening_snack_details WHERE (code = new.code) AND (date = new.date)),
new.sugar = (SELECT SUM(sugar) FROM evening_snack_details WHERE (code = new.code) AND (date = new.date)),
new.vegetables = (SELECT SUM(vegetables) FROM evening_snack_details WHERE (code = new.code) AND (date = new.date)),
new.Water = (SELECT SUM(Water) FROM evening_snack_details WHERE (code = new.code) AND (date = new.date));

