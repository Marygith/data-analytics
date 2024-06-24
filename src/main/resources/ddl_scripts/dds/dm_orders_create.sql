-- dds.dm_orders определение

CREATE TABLE IF NOT EXISTS dm_orders (
    id SERIAL NOT NULL,
    time_id INTEGER NOT NULL,
    status VARCHAR NOT NULL,
    delivery_id VARCHAR NOT NULL,
    total_amount NUMERIC(14, 2) NOT NULL,
    CONSTRAINT dm_orders_pk PRIMARY KEY (id),
    CONSTRAINT fk_delivery
        FOREIGN KEY (delivery_id)
        REFERENCES dm_deliveries(id),
    CONSTRAINT fk_time
        FOREIGN KEY (time_id)
        REFERENCES dm_time(time_id)
);