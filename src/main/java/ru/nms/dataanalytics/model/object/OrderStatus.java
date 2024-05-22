package ru.nms.dataanalytics.model.object;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.time.LocalDateTime;

public record OrderStatus(LocalDateTime time, ru.nms.dataanalytics.model.object.OrderStatus.Status status) {

    public enum Status {
        NEW,
        PREPAIRING,
        FINISHED,
        DELIVERING
    }
}
