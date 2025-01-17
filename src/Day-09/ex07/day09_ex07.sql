CREATE OR REPLACE FUNCTION func_minimum(VARIADIC arr float[])
RETURNS float AS $$
BEGIN
    RETURN (SELECT min(tmp) FROM unnest(arr) as tmp);
END;
$$
LANGUAGE plpgsql;

SELECT func_minimum(VARIADIC ARRAY[10.0, -1.0, 5.0, 4.4]);