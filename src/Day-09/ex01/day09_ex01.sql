CREATE OR REPLACE FUNCTION fnc_trg_person_update_audit() RETURNS trigger as
$$
	BEGIN
		INSERT INTO person_audit(type_event, row_id, name, age, gender, address)
		VALUES ('U', OLD.id, OLD.name, OLD.age, OLD.gender, OLD.address);
		return OLD;
	END
$$
LANGUAGE plpgsql;

CREATE TRIGGER trg_person_update_audit
	AFTER UPDATE on person
FOR EACH row
EXECUTE PROCEDURE fnc_trg_person_update_audit();

UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;