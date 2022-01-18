package com.onmangequoi.api.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class IndexController {

    @RequestMapping("/")
    public ResponseEntity<String> get(){
        return ResponseEntity.ok().body("hi");
    }
}
