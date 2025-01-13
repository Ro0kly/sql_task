CREATE TABLE Person_discounts (
	id bigint,
	person_id bigint,
	pizzeria_id bigint,
	discount numeric,
	PRIMARY KEY (id),
	CONSTRAINT fk_person_discounts_person_id
		FOREIGN KEY (person_id)
			REFERENCES person (id),
	CONSTRAINT fk_person_discounts_pizzeria_id
		FOREIGN KEY (pizzeria_id)
			REFERENCES pizzeria (id)
)