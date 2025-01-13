COMMENT ON TABLE person_discounts IS 'The table provides information about person''s discounts.';
COMMENT ON COLUMN person_discounts.id IS 'id is PRIMARY KEY of table.';
COMMENT ON COLUMN person_discounts.person_id IS 'person_id is an id of person who gets a discount / is a foreign key for table ''person''.';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'pizzeria_id is an id of pizzeria where person gets a discount / is a foreign key for table ''pizzeria''.';
COMMENT ON COLUMN person_discounts.discount IS 'size of discount in % scale.'