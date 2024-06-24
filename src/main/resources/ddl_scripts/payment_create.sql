CREATE TABLE IF NOT EXISTS public.payment (
   payment_id varchar(100) NOT NULL,
   client_id int8 NOT NULL,
   dish_id int8 NOT NULL,
   dish_amount int8 NULL,
   order_id varchar(100) NULL,
   tips int8 NULL,
   CONSTRAINT payment_pk PRIMARY KEY (payment_id),
   CONSTRAINT payment_dish_fk FOREIGN KEY (dish_id) REFERENCES src.dish(dish_id)
);

CREATE OR REPLACE TRIGGER payment_changes_trigger
    AFTER INSERT OR DELETE OR UPDATE
    ON public.payment
    FOR EACH ROW
    EXECUTE FUNCTION public.log_payment_changes();