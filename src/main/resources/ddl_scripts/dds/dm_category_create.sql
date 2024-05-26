-- dds.dm_category определение

CREATE TABLE dds.dm_category (
	category_id varchar(200) NULL,
	"name" varchar(200) NOT NULL,
	"percent" float8 NOT NULL,
	min_payment varchar(50) NOT NULL,
	valid_from timestamp NOT NULL,
	valid_to timestamp NOT NULL,
	CONSTRAINT dm_category_pk PRIMARY KEY (category_id)
);
