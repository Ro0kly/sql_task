CREATE TABLE IF NOT EXISTS person_audit (
	created timestamp with time zone not null DEFAULT CURRENT_TIMESTAMP,
	type_event char(1) not null DEFAULT 'I',
	row_id bigint not null,
	name varchar,
	age integer,
	gender varchar,
	address varchar,
	CONSTRAINT ch_type_event CHECK (type_event IN ('I', 'D', 'U'))
);

CREATE OR REPLACE FUNCTION fnc_trg_person_insert_audit() RETURNS trigger as
$$
	BEGIN
		INSERT INTO person_audit(type_event, row_id, name, age, gender, address)
		VALUES ('I', NEW.id, NEW.name, NEW.age, NEW.gender, NEW.address);
		return NEW;
	END
$$
LANGUAGE plpgsql;

CREATE TRIGGER trg_person_insert_audit
	AFTER INSERT on person
FOR EACH row
EXECUTE PROCEDURE fnc_trg_person_insert_audit();

INSERT INTO person(id, name, age, gender, address)
VALUES (10, 'Damir', 22, 'male', 'Irkutsk');