package ru.netology.sql_dao.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.sql_dao.repository.DataBaseRepository;

import java.util.List;

@RestController
public class ProductController {
    private DataBaseRepository dataBaseRepository;

    public ProductController(DataBaseRepository dataBaseRepository) {
        this.dataBaseRepository = dataBaseRepository;
    }

    @GetMapping("/products/fetch-product")
    public List<String>getProductName(@RequestParam String name){
        return dataBaseRepository.getProductName(name);
    }
}
