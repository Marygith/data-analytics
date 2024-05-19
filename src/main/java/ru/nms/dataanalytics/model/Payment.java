package ru.nms.dataanalytics.model;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Getter
@Setter
@ToString
@Entity
@Table(name = "payment")
public class Payment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = true)
    @ToString.Exclude
    private Client client;

    @ManyToOne(fetch = FetchType.LAZY, optional = true)
    @ToString.Exclude
    private Dish dish;

    private Integer dishAmount;

    private Long orderId;

    private LocalDateTime orderTime;

    private Integer orderSum;

    private Double tips;

}
