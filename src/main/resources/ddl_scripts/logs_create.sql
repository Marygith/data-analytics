-- Table: public.logs

-- DROP TABLE IF EXISTS public.logs;

CREATE TABLE IF NOT EXISTS public.logs
(
    id bigint NOT NULL DEFAULT nextval('logs_id_seq'::regclass),
    operation character varying(255) COLLATE pg_catalog."default",
    table_name character varying(255) COLLATE pg_catalog."default",
    "time" timestamp(6) without time zone,
    "values" character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT logs_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.logs
    OWNER to postgres;