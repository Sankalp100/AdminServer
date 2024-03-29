SET new.energy = (SELECT SUM(energy) FROM dinner_details WHERE (code = new.code) AND (date = new.date)),
new.carbs = (SELECT SUM(carbs) FROM dinner_details WHERE (code = new.code) AND (date = new.date)),
new.proteins = (SELECT SUM(proteins) FROM dinner_details WHERE (code = new.code) AND (date = new.date)),
new.fats = (SELECT SUM(fats) FROM dinner_details WHERE (code = new.code) AND (date = new.date)),
new.fibres = (SELECT SUM(fibres) FROM dinner_details WHERE (code = new.code) AND (date = new.date)),
new.Cereal = (SELECT SUM(Cereal) FROM dinner_details WHERE (code = new.code) AND (date = new.date)),
new.Fat = (SELECT SUM(Fat) FROM dinner_details WHERE (code = new.code) AND (date = new.date)),
new.fruits = (SELECT SUM(fruits) FROM dinner_details WHERE (code = new.code) AND (date = new.date)),
new.milk = (SELECT SUM(milk) FROM dinner_details WHERE (code = new.code) AND (date = new.date)),
new.Nuts = (SELECT SUM(Nuts) FROM dinner_details WHERE (code = new.code) AND (date = new.date)),
new.pulses = (SELECT SUM(pulses) FROM dinner_details WHERE (code = new.code) AND (date = new.date)),
new.sugar = (SELECT SUM(sugar) FROM dinner_details WHERE (code = new.code) AND (date = new.date)),
new.vegetables = (SELECT SUM(vegetables) FROM dinner_details WHERE (code = new.code) AND (date = new.date)),
new.Water = (SELECT SUM(Water) FROM dinner_details WHERE (code = new.code) AND (date = new.date));

