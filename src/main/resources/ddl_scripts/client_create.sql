-- Table: public.client

-- DROP TABLE IF EXISTS public.client;

create sequence client_id_seq;

CREATE TABLE IF NOT EXISTS public.client
(
    id bigint NOT NULL DEFAULT nextval('client_id_seq'::regclass),
    bonus_balance double precision,
    category_id bigint,
    CONSTRAINT client_pkey PRIMARY KEY (id),
    CONSTRAINT fkdi9uuyv4w9hdd2qpwngyodq2p FOREIGN KEY (category_id)
        REFERENCES public.category (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.client
    OWNER to postgres;

-- Trigger: client_changes_trigger

-- DROP TRIGGER IF EXISTS client_changes_trigger ON public.client;

CREATE OR REPLACE TRIGGER client_changes_trigger
    AFTER INSERT OR DELETE OR UPDATE
    ON public.client
    FOR EACH ROW
    EXECUTE FUNCTION public.log_client_changes();