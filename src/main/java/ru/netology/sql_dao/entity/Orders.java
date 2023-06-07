package ru.netology.sql_dao.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Orders", schema = "netology")
public class Orders {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(nullable = false)
    @Temporal(TemporalType.DATE)
    private Date date;

    @Column(nullable = false)
    private String product_name;

    @Column(nullable = false)
    private int amount;

    @ManyToOne(optional = false)
    @JoinColumn(name = "customer_id")
    private Customers customers;
}
