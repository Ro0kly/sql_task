CREATE OR REPLACE FUNCTION fnc_trg_person_delete_audit() RETURNS trigger as
$$
	BEGIN
		INSERT INTO person_audit(type_event, row_id, name, age, gender, address)
		VALUES ('D', OLD.id, OLD.name, OLD.age, OLD.gender, OLD.address);
		return OLD;
	END
$$
LANGUAGE plpgsql;

CREATE TRIGGER trg_person_delete_audit
	AFTER DELETE on person
FOR EACH row
EXECUTE PROCEDURE fnc_trg_person_delete_audit();

DELETE FROM person WHERE id = 10;