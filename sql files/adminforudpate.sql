insert into earlymorning_total(code,date)
values
(new.code,new.date);
insert into admindiet_total(code,date)
values
(new.code,new.date);

UPDATE earlymorning_total SET code=new.code, date= new.date WHERE code=new.code AND date = new.date ;
UPDATE admindiet_total SET code=new.code, date= new.date WHERE code=new.code AND date = new.date ;


insert into breakfast_total(code,date)
values
(new.code,new.date);
insert into admindiet_total(code,date)
values
(new.code,new.date);

UPDATE breakfast_total SET code=new.code, date= new.date WHERE code=new.code AND date = new.date ;
UPDATE admindiet_total SET code=new.code, date= new.date WHERE code=new.code AND date = new.date ;


insert into mid_morning_total(code,date)
values
(new.code,new.date);
insert into admindiet_total(code,date)
values
(new.code,new.date);

UPDATE mid_morning_total SET code=new.code, date= new.date WHERE code=new.code AND date = new.date ;
UPDATE admindiet_total SET code=new.code, date= new.date WHERE code=new.code AND date = new.date ;



insert into lunch_total(code,date)
values
(new.code,new.date);
insert into admindiet_total(code,date)
values
(new.code,new.date);

UPDATE lunch_total SET code=new.code, date= new.date WHERE code=new.code AND date = new.date ;
UPDATE admindiet_total SET code=new.code, date= new.date WHERE code=new.code AND date = new.date ;





insert into evening_snack_total(code,date)
values
(new.code,new.date);
insert into admindiet_total(code,date)
values
(new.code,new.date);

UPDATE evening_snack_total SET code=new.code, date= new.date WHERE code=new.code AND date = new.date ;
UPDATE admindiet_total SET code=new.code, date= new.date WHERE code=new.code AND date = new.date ;




insert into dinner_total(code,date)
values
(new.code,new.date);
insert into admindiet_total(code,date)
values
(new.code,new.date);

UPDATE dinner_total SET code=new.code, date= new.date WHERE code=new.code AND date = new.date ;
UPDATE admindiet_total SET code=new.code, date= new.date WHERE code=new.code AND date = new.date ;




insert into post_dinner_total(code,date)
values
(new.code,new.date);
insert into admindiet_total(code,date)
values
(new.code,new.date);

UPDATE post_dinner_total SET code=new.code, date= new.date WHERE code=new.code AND date = new.date ;
UPDATE admindiet_total SET code=new.code, date= new.date WHERE code=new.code AND date = new.date ;