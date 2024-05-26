-- dds.dm_clients определение

CREATE TABLE dds.dm_clients (
	client_id serial4 NOT NULL,
	bonus_balance int8 NULL,
	category_id varchar(200) NOT NULL,
	obj_id varchar NOT NULL,
	"name" varchar NOT NULL,
	phone varchar NOT NULL,
	email varchar NOT NULL,
	birthday varchar NOT NULL,
	login varchar NOT NULL,
	city varchar NOT NULL,
	street varchar NOT NULL,
	building varchar NOT NULL,
	valid_from timestamp NOT NULL,
	valid_to timestamp NOT NULL,
	CONSTRAINT dm_clients_pk PRIMARY KEY (client_id),
	CONSTRAINT dm_clients_unique UNIQUE (obj_id)
);
