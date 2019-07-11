IF( (SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Cup') ) = (SELECT uom_name from recipe_ingreinfo WHERE recipe_id = new.recipe_id)) THEN
    insert into recipe_uom (recipe_id,rec_uom_name,rec_uom_value)
        values
        ( new.recipe_id,new.uom_name,new.uom_value);

ELSEIF(SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Cup') ) THEN
        insert into recipe_uom (recipe_id,rec_uom_name)
        values
        (new.recipe_id,'Cup' );

END IF;        
        
IF( (SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Gram') ) = (SELECT uom_name from recipe_ingreinfo WHERE recipe_id = new.recipe_id)) THEN
    insert into recipe_uom (recipe_id,rec_uom_name,rec_uom_value)
        values
        ( new.recipe_id,new.uom_name,new.uom_value);

ELSEIF(SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Gram') ) THEN
        insert into recipe_uom (recipe_id,rec_uom_name)
        values
        (new.recipe_id,'Gram' );

END IF;        
        
IF( (SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Large') ) = (SELECT uom_name from recipe_ingreinfo WHERE recipe_id = new.recipe_id)) THEN
    insert into recipe_uom (recipe_id,rec_uom_name,rec_uom_value)
        values
        ( new.recipe_id,new.uom_name,new.uom_value);

ELSEIF(SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Large') ) THEN
        insert into recipe_uom (recipe_id,rec_uom_name)
        values
        (new.recipe_id,'Large' );
END IF; 

IF( (SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Medium') ) = (SELECT uom_name from recipe_ingreinfo WHERE recipe_id = new.recipe_id)) THEN
    insert into recipe_uom (recipe_id,rec_uom_name,rec_uom_value)
        values
        ( new.recipe_id,new.uom_name,new.uom_value);

ELSEIF(SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Medium') ) THEN
        insert into recipe_uom (recipe_id,rec_uom_name)
        values
        (new.recipe_id,'Medium' );
END IF;

IF( (SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='ML') ) = (SELECT uom_name from recipe_ingreinfo WHERE recipe_id = new.recipe_id)) THEN
    insert into recipe_uom (recipe_id,rec_uom_name,rec_uom_value)
        values
        ( new.recipe_id,new.uom_name,new.uom_value);

ELSEIF(SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='ML') ) THEN
        insert into recipe_uom (recipe_id,rec_uom_name)
        values
        (new.recipe_id,'ML' );
END IF;

IF( (SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='ML Glass') ) = (SELECT uom_name from recipe_ingreinfo WHERE recipe_id = new.recipe_id)) THEN
    insert into recipe_uom (recipe_id,rec_uom_name,rec_uom_value)
        values
        ( new.recipe_id,new.uom_name,new.uom_value);

ELSEIF(SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='ML Glass') ) THEN
        insert into recipe_uom (recipe_id,rec_uom_name)
        values
        (new.recipe_id,'ML Glass' );
END IF;        
        
IF( (SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Mug') ) = (SELECT uom_name from recipe_ingreinfo WHERE recipe_id = new.recipe_id)) THEN
    insert into recipe_uom (recipe_id,rec_uom_name,rec_uom_value)
        values
        ( new.recipe_id,new.uom_name,new.uom_value);

ELSEIF(SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Mug') ) THEN
        insert into recipe_uom (recipe_id,rec_uom_name)
        values
        (new.recipe_id,'Mug' );
END IF;        
        
IF( (SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Piece') ) = (SELECT uom_name from recipe_ingreinfo WHERE recipe_id = new.recipe_id)) THEN
    insert into recipe_uom (recipe_id,rec_uom_name,rec_uom_value)
        values
        ( new.recipe_id,new.uom_name,new.uom_value);

ELSEIF(SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Piece') ) THEN
        insert into recipe_uom (recipe_id,rec_uom_name)
        values
        (new.recipe_id,'Piece' );
END IF;

IF( (SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Small') ) = (SELECT uom_name from recipe_ingreinfo WHERE recipe_id = new.recipe_id)) THEN
    insert into recipe_uom (recipe_id,rec_uom_name,rec_uom_value)
        values
        ( new.recipe_id,new.uom_name,new.uom_value);

ELSEIF(SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Small') ) THEN
        insert into recipe_uom (recipe_id,rec_uom_name)
        values
        (new.recipe_id,'Small' );
END IF;

IF( (SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Table Spoon') ) = (SELECT uom_name from recipe_ingreinfo WHERE recipe_id = new.recipe_id)) THEN
    insert into recipe_uom (recipe_id,rec_uom_name,rec_uom_value)
        values
        ( new.recipe_id,new.uom_name,new.uom_value);

ELSEIF(SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Table Spoon') ) THEN
        insert into recipe_uom (recipe_id,rec_uom_name)
        values
        (new.recipe_id,'Table Spoon' );
END IF;

IF( (SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Tea Cup') ) = (SELECT uom_name from recipe_ingreinfo WHERE recipe_id = new.recipe_id)) THEN
    insert into recipe_uom (recipe_id,rec_uom_name,rec_uom_value)
        values
        ( new.recipe_id,new.uom_name,new.uom_value);

ELSEIF(SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Tea Cup') ) THEN
        insert into recipe_uom (recipe_id,rec_uom_name)
        values
        (new.recipe_id,'Tea Cup' );
END IF;        
IF( (SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Tea Spoon') ) = (SELECT uom_name from recipe_ingreinfo WHERE recipe_id = new.recipe_id)) THEN
    insert into recipe_uom (recipe_id,rec_uom_name,rec_uom_value)
        values
        ( new.recipe_id,new.uom_name,new.uom_value);

ELSEIF(SELECT rec_uom_name from rec_measure WHERE (recipe_id = new.recipe_id) AND (rec_uom_name ='Tea Spoon') ) THEN
        insert into recipe_uom (recipe_id,rec_uom_name)
        values
        (new.recipe_id,'Tea Spoon' );
END IF;        
        
