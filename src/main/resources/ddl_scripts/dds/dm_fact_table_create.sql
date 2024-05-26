-- dds.dm_fact_table определение

CREATE TABLE dds.dm_fact_table (
	id serial NOT NULL,
	dish_id integer NOT NULL,
	order_id integer NOT NULL,
	amount integer NOT NULL,
	price numeric(14, 2) NOT NULL,
	total_amount numeric(14, 2) NOT NULL,
	bonus_payment numeric(14, 2) NOT NULL,
	bonus_grant numeric(14, 2) NOT NULL,
	CONSTRAINT dm_fact_table_pk PRIMARY KEY (id),
	CONSTRAINT dm_fact_table_check CHECK (total_amount > 0),
	CONSTRAINT dm_fact_table_check_1 CHECK (bonus_payment > 0),
	CONSTRAINT dm_fact_table_check_2 CHECK (bonus_grant > 0)
);