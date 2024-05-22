package ru.nms.dataanalytics.model.mongo;

import jakarta.persistence.Id;
import org.bson.types.ObjectId;
import org.springframework.data.mongodb.core.mapping.DBRef;
import org.springframework.data.mongodb.core.mapping.Document;
import ru.nms.dataanalytics.model.object.OrderStatus;

import java.time.LocalDateTime;
import java.util.List;

@Document
public class Order {

    @Id
    private ObjectId id;

    @DBRef
    private Restaurant restaurant;

    @DBRef
    private Client client;

    private List<String> orderDish;

    private Integer totalBonus;

    private Integer cost;

    private Integer payment;

    private Integer bonusForVisit;

    private List<OrderStatus> statuses;

    private OrderStatus.Status finalStatus;

    private LocalDateTime updateTime;
}
