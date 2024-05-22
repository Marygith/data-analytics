package ru.nms.dataanalytics.model.mongo;

import jakarta.persistence.Id;
import org.bson.types.ObjectId;
import org.springframework.data.mongodb.core.mapping.Document;

import java.time.LocalDate;

@Document
public class Restaurant {

    @Id
    private ObjectId id;

    private String name;

    private String phone;

    private String email;

    private LocalDate foundingDay;

    private String address;

}
