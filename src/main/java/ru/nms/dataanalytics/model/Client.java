package ru.nms.dataanalytics.model;

import jakarta.persistence.*;
import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Getter
@Setter
@ToString
@Entity
@Table(name = "client")
public class Client {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Double bonusBalance;

    @ManyToOne(fetch = FetchType.LAZY, optional = true)
    @ToString.Exclude
    private Category category;
}
