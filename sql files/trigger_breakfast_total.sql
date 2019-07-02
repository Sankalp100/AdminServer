SET new.energy = (SELECT SUM(energy) FROM breakfast_details WHERE (code = new.code) AND (date = new.date)),
new.carbs = (SELECT SUM(carbs) FROM breakfast_details WHERE (code = new.code) AND (date = new.date)),
new.proteins = (SELECT SUM(proteins) FROM breakfast_details WHERE (code = new.code) AND (date = new.date)),
new.fats = (SELECT SUM(fats) FROM breakfast_details WHERE (code = new.code) AND (date = new.date)),
new.fibres = (SELECT SUM(fibres) FROM breakfast_details WHERE (code = new.code) AND (date = new.date)),
new.Cereal = (SELECT SUM(Cereal) FROM breakfast_details WHERE (code = new.code) AND (date = new.date)),
new.Fat = (SELECT SUM(Fat) FROM breakfast_details WHERE (code = new.code) AND (date = new.date)),
new.fruits = (SELECT SUM(fruits) FROM breakfast_details WHERE (code = new.code) AND (date = new.date)),
new.milk = (SELECT SUM(milk) FROM breakfast_details WHERE (code = new.code) AND (date = new.date)),
new.Nuts = (SELECT SUM(Nuts) FROM breakfast_details WHERE (code = new.code) AND (date = new.date)),
new.pulses = (SELECT SUM(pulses) FROM breakfast_details WHERE (code = new.code) AND (date = new.date)),
new.sugar = (SELECT SUM(sugar) FROM breakfast_details WHERE (code = new.code) AND (date = new.date)),
new.vegetables = (SELECT SUM(vegetables) FROM breakfast_details WHERE (code = new.code) AND (date = new.date)),
new.Water = (SELECT SUM(Water) FROM breakfast_details WHERE (code = new.code) AND (date = new.date));

