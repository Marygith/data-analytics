-- создание таблицы dm_deliveries должно быть после dm_deliverymen
CREATE TABLE IF NOT EXISTS dds.dm_deliveries (
    id VARCHAR(100) PRIMARY KEY,
    deliveryman_id VARCHAR(100) NOT NULL,
    delivery_address VARCHAR(255),
    rating INTEGER,
    tips BIGINT,
    CONSTRAINT fk_deliveryman
        FOREIGN KEY (deliveryman_id)
        REFERENCES dm_deliverymen(id)
);