-- dds.dm_menu определение

CREATE TABLE dds.dm_menu (
	menu_id varchar NOT NULL,
	"name" varchar NOT NULL,
	CONSTRAINT dm_menu_pk PRIMARY KEY (menu_id)
);