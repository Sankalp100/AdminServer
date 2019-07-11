
SET new.energy = (SELECT energy_kcal FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (SELECT picker_value FROM picker_lists WHERE  (display_value = new.qty) AND (uom_name = new.unit)) , 
new.carbs = (SELECT carbohydrate FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (SELECT picker_value FROM picker_lists WHERE (display_value = new.qty) AND (uom_name = new.unit)) , 
new.proteins = (SELECT protein FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (SELECT picker_value FROM picker_lists WHERE (display_value = new.qty) AND (uom_name = new.unit)) , 
new.fats = (SELECT visiblefat FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (SELECT picker_value FROM picker_lists WHERE (display_value = new.qty) AND (uom_name = new.unit)) , 
new.fibres = (SELECT total_fibre FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (SELECT picker_value FROM picker_lists WHERE (display_value = new.qty) AND (uom_name = new.unit)) , 
new.Cereal = (SELECT Cereal FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (SELECT picker_value FROM picker_lists WHERE (display_value = new.qty) AND (uom_name = new.unit)) , 
new.Fat = (SELECT Fat FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (SELECT picker_value FROM picker_lists WHERE (display_value = new.qty) AND (uom_name = new.unit)) , 
new.fruits = (SELECT fruits FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (SELECT picker_value FROM picker_lists WHERE (display_value = new.qty) AND (uom_name = new.unit)) , 
new.milk = (SELECT milk FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (SELECT picker_value FROM picker_lists WHERE (display_value = new.qty) AND (uom_name = new.unit)) , 
new.Nuts = (SELECT Nuts FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (SELECT picker_value FROM picker_lists WHERE (display_value = new.qty) AND (uom_name = new.unit)) , 
new.pulses = (SELECT pulses FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (SELECT picker_value FROM picker_lists WHERE (display_value = new.qty) AND (uom_name = new.unit)) , 
new.sugar = (SELECT sugar FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (SELECT picker_value FROM picker_lists WHERE (display_value = new.qty) AND (uom_name = new.unit)) , 
new.vegetables = (SELECT vegetables FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (SELECT picker_value FROM picker_lists WHERE (display_value = new.qty) AND (uom_name = new.unit)) , 
new.Water = (SELECT Water FROM recipe_uom WHERE  (rec_name = new.recipe_name) AND (rec_uom_name = new.unit) ) * (SELECT picker_value FROM picker_lists WHERE (display_value = new.qty) AND (uom_name = new.unit)) ;

ALL_total ALter


IF EXISTS(SELECT * FROM admindiet_total WHERE (code= new.code) AND (date= new.date)) THEN


  UPDATE admindiet_total SET code=new.code, date= new.date WHERE (code=new.code) AND (date = new.date);

ELSE 

  insert into admindiet_total(code,date) values (new.code,new.date);

END IF

earlymorning
AFTER INSERT 

IF EXISTS(SELECT * FROM earlymorning_total WHERE (code= new.code) AND (date= new.date)) THEN


  UPDATE earlymorning_total SET code=new.code, date= new.date WHERE (code=new.code) AND (date = new.date);

ELSE 

  insert into earlymorning_total(code,date) values (new.code,new.date);

END IF


 breakfast_
AFTER INSERT

IF EXISTS(SELECT * FROM breakfast_total WHERE (code= new.code) AND (date= new.date)) THEN


  UPDATE breakfast_total SET code=new.code, date= new.date WHERE (code=new.code) AND (date = new.date);

ELSE 

  insert into breakfast_total(code,date) values (new.code,new.date);

END IF


mid_morning_
AFTER INSERT 

IF EXISTS(SELECT * FROM mid_morning_total WHERE (code= new.code) AND (date= new.date)) THEN


  UPDATE mid_morning_total SET code=new.code, date= new.date WHERE (code=new.code) AND (date = new.date);

ELSE 

  insert into mid_morning_total(code,date) values (new.code,new.date);

END IF

lunch_

AFTER INSERT 

IF EXISTS(SELECT * FROM lunch_total WHERE (code= new.code) AND (date= new.date)) THEN


  UPDATE lunch_total SET code=new.code, date= new.date WHERE (code=new.code) AND (date = new.date);

ELSE 

  insert into lunch_total(code,date) values (new.code,new.date);

END IF


evening_snack_

AFTER INSERT 

IF EXISTS(SELECT * FROM evening_snack_total WHERE (code= new.code) AND (date= new.date)) THEN


  UPDATE evening_snack_total SET code=new.code, date= new.date WHERE (code=new.code) AND (date = new.date);

ELSE 

  insert into evening_snack_total(code,date) values (new.code,new.date);

END IF


dinner_

AFTER INSERT 

IF EXISTS(SELECT * FROM dinner_total WHERE (code= new.code) AND (date= new.date)) THEN


  UPDATE dinner_total SET code=new.code, date= new.date WHERE (code=new.code) AND (date = new.date);

ELSE 

  insert into dinner_total(code,date) values (new.code,new.date);

END IF


post_dinner_


AFTER INSERT 

IF EXISTS(SELECT * FROM post_dinner_total WHERE (code= new.code) AND (date= new.date)) THEN


  UPDATE post_dinner_total SET code=new.code, date= new.date WHERE (code=new.code) AND (date = new.date);

ELSE 

  insert into post_dinner_total(code,date) values (new.code,new.date);

END IF