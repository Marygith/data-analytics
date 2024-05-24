-- dds.dm_orders определение

CREATE TABLE dds.dm_orders (
	id serial NOT NULL,
	user_id integer NOT NULL,
	restaurant_id integer NOT NULL,
	time_id integer NOT NULL,
	status varchar NOT NULL,
	order_unique_id varchar NOT NULL,
	deliveryman_id varchar NOT NULL,
	CONSTRAINT dm_orders_pk PRIMARY KEY (id)
);