package ru.netology.sql_dao.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DataBaseRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public List<String> getProductName(String name) {
        var query = entityManager.createQuery("select o.product_name from Orders o where o.customers.name=:name");
        query.setParameter("name", name);
        return query.getResultList();

    }

}

