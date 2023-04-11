package com.csc340.freemarkerdemo.task;

import com.csc340.freemarkerdemo.goal.Goal;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author sentini
 */
@AllArgsConstructor
@Entity
@Table(name = "task")
@NoArgsConstructor
@Getter
@Setter
public class Task {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long taskId;
    private String title;
    private String detail;
    private String status;

    private long goalNumber;

    public Task(String title, String detail, String status, long goalId) {
        this.title = title;
        this.detail = detail;
        this.status = status;
        this.goalNumber = goalId;
    }

}
