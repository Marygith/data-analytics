-- dds.dm_time определение

CREATE TABLE dds.dm_time (
	id int NOT NULL,
	time_mark timestamp NOT NULL,
	"year" smallint NOT NULL,
	"month" smallint NOT NULL,
	"day" smallint NOT NULL,
	"time" time NOT NULL,
	"date" date NOT NULL,
	CONSTRAINT dm_time_pk PRIMARY KEY (id),
	CONSTRAINT dm_time_check CHECK (year > 2022),
	CONSTRAINT dm_time_check_1 CHECK (month between 1 and 12),
	CONSTRAINT dm_time_check_2 CHECK (day between 1 and 31)
);
