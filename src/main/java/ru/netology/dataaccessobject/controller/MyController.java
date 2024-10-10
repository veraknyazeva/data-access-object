package ru.netology.dataaccessobject.controller;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.dataaccessobject.repository.MyRepository;

@RestController
public class MyController {
    private final MyRepository repository;

    public MyController(MyRepository repository) {
        this.repository = repository;
    }

    @GetMapping("/products/fetch-product")
    public String getProduct(@RequestParam(name = "name") String name) {
        try {
            return repository.getProductName(name.toLowerCase());
        } catch (EmptyResultDataAccessException ex) {
            return "";
        }
    }
}
//localhost:8080/products/fetch-product?name=Ivan