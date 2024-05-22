-- Table: public.category

-- DROP TABLE IF EXISTS public.category;

CREATE TABLE IF NOT EXISTS public.category
(
    id bigint NOT NULL DEFAULT nextval('category_id_seq'::regclass),
    min_payment double precision,
    name character varying(255) COLLATE pg_catalog."default",
    percent double precision,
    CONSTRAINT category_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.category
    OWNER to postgres;

-- Trigger: category_changes_trigger

-- DROP TRIGGER IF EXISTS category_changes_trigger ON public.category;

CREATE OR REPLACE TRIGGER category_changes_trigger
    AFTER INSERT OR DELETE OR UPDATE
    ON public.category
    FOR EACH ROW
    EXECUTE FUNCTION public.log_category_changes();