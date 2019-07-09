
CREATE TABLE TEMPTABLE
(
    serial_number INT(10),
    recipe_id INT(10),
    rec_uom_name VARCHAR(255)
);
SET @count:=0;
INSERT INTO TEMPTABLE

SELECT  (@count:=@count+1) AS serial_number, 
        recipe_id,rec_uom_name
FROM    rec_measure WHere recipe_id = 14
