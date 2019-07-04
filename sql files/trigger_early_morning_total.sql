SET new.energy = (SELECT SUM(energy) FROM early_morning_details WHERE (code = new.code) AND (date = new.date)),
new.carbs = (SELECT SUM(carbs) FROM early_morning_details WHERE (code = new.code) AND (date = new.date)),
new.proteins = (SELECT SUM(proteins) FROM early_morning_details WHERE (code = new.code) AND (date = new.date)),
new.fats = (SELECT SUM(fats) FROM early_morning_details WHERE (code = new.code) AND (date = new.date)),
new.fibres = (SELECT SUM(fibres) FROM early_morning_details WHERE (code = new.code) AND (date = new.date)),
new.Cereal = (SELECT SUM(Cereal) FROM early_morning_details WHERE (code = new.code) AND (date = new.date)),
new.Fat = (SELECT SUM(Fat) FROM early_morning_details WHERE (code = new.code) AND (date = new.date)),
new.fruits = (SELECT SUM(fruits) FROM early_morning_details WHERE (code = new.code) AND (date = new.date)),
new.milk = (SELECT SUM(milk) FROM early_morning_details WHERE (code = new.code) AND (date = new.date)),
new.Nuts = (SELECT SUM(Nuts) FROM early_morning_details WHERE (code = new.code) AND (date = new.date)),
new.pulses = (SELECT SUM(pulses) FROM early_morning_details WHERE (code = new.code) AND (date = new.date)),
new.sugar = (SELECT SUM(sugar) FROM early_morning_details WHERE (code = new.code) AND (date = new.date)),
new.vegetables = (SELECT SUM(vegetables) FROM early_morning_details WHERE (code = new.code) AND (date = new.date)),
new.Water = (SELECT SUM(Water) FROM early_morning_details WHERE (code = new.code) AND (date = new.date));
