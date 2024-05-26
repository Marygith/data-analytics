-- dds.dm_restaurants определение

CREATE TABLE dds.dm_restaurants (
	id varchar(2000) NOT NULL,
	"name" varchar NOT NULL,
	phone varchar NOT NULL,
	email varchar NOT NULL,
	founding_day date NOT NULL,
	city varchar NOT NULL,
	street varchar NOT NULL,
	building varchar NOT NULL,
	menu_id varchar NOT NULL,
	valid_from timestamp NOT NULL,
	valid_to timestamp NOT NULL,
	CONSTRAINT dm_restaurants_pk PRIMARY KEY (id)
);