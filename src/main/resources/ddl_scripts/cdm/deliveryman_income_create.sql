create sequence del_inc_id_seq;

CREATE TABLE cdm.deliveryman_income (
	id bigint NOT NULL DEFAULT nextval('del_inc_id_seq'::regclass),
	deliveryman_id varchar NULL,
	deliveryman_name varchar NULL,
	"year" float8 NULL,
	"month" float8 NULL,
	orders_amount float8 NULL,
	orders_total_cost float8 NULL,
	rating float8 NULL,
	company_commission float8 NULL,
	deliveryman_order_income float8 NULL,
	tips float8 NULL,
	CONSTRAINT deliveryman_income_pk PRIMARY KEY (id)
);

-- Column comments

COMMENT ON COLUMN cdm.deliveryman_income.deliveryman_id IS 'id доставщика';
COMMENT ON COLUMN cdm.deliveryman_income.deliveryman_name IS 'фио доставщика';
COMMENT ON COLUMN cdm.deliveryman_income."year" IS 'год отчетного периода';
COMMENT ON COLUMN cdm.deliveryman_income."month" IS 'месяц отчетного периода';
COMMENT ON COLUMN cdm.deliveryman_income.orders_amount IS 'количество заказов за месяц';
COMMENT ON COLUMN cdm.deliveryman_income.orders_total_cost IS 'общая стоимость заказов';
COMMENT ON COLUMN cdm.deliveryman_income.rating IS 'средний рейтинг доставщика клиентами';
COMMENT ON COLUMN cdm.deliveryman_income.company_commission IS 'сумма, которую компания забирает себе за заказ, orders_total_cost*0.5.';
COMMENT ON COLUMN cdm.deliveryman_income.deliveryman_order_income IS 'перечисляемые курьеру за заказ';
COMMENT ON COLUMN cdm.deliveryman_income.tips IS 'чаевые';