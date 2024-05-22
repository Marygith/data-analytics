-- Table: public.dish

-- DROP TABLE IF EXISTS public.dish;

CREATE TABLE IF NOT EXISTS public.dish
(
    id bigint NOT NULL DEFAULT nextval('dish_id_seq'::regclass),
    name character varying(255) COLLATE pg_catalog."default",
    price integer,
    CONSTRAINT dish_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dish
    OWNER to postgres;

-- Trigger: dish_changes_trigger

-- DROP TRIGGER IF EXISTS dish_changes_trigger ON public.dish;

CREATE OR REPLACE TRIGGER dish_changes_trigger
    AFTER INSERT OR DELETE OR UPDATE
    ON public.dish
    FOR EACH ROW
    EXECUTE FUNCTION public.log_dish_changes();