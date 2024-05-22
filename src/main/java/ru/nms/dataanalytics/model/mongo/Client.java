package ru.nms.dataanalytics.model.mongo;

import jakarta.persistence.Id;
import org.bson.types.ObjectId;
import org.springframework.data.mongodb.core.mapping.Document;

import java.time.LocalDate;

@Document
public class Client {

    @Id
    private ObjectId id;

    private String name;

    private String phone;

    private String email;

    private LocalDate birthday;

    private String login;

    private Address address;

    private static class Address {
        private String city;

        private String street;

        private String building;
    }
}
