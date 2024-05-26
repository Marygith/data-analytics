-- dds.dm_dish определение

CREATE TABLE dds.dm_dish (
	dish_id int8 NULL,
	"name" varchar(5000) NULL,
	price int8 NULL,
	menu_id varchar NOT NULL,
	valid_from timestamp NOT NULL,
	valid_to timestamp NOT NULL
);
