CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop integer DEFAULT 10)
	RETURNS SETOF integer AS $$
DECLARE prev integer; cur integer; buff integer;
BEGIN
    prev := 0; RETURN NEXT prev;
    cur := 1; RETURN NEXT cur;
	buff := 1;
    WHILE buff < pstop LOOP
        buff := prev + cur;
        prev := cur;
        cur := buff;
        if buff < pstop THEN 
            RETURN NEXT buff;
        END IF;
    END LOOP;
END;
$$ LANGUAGE plpgsql;

select * from fnc_fibonacci(100);
select * from fnc_fibonacci();