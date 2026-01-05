package com.example.epjp;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class BootApplication {
    private static final Logger log = LoggerFactory.getLogger(BootApplication.class);

    static void main(String[] args) {
        log.trace("Starting up");
        SpringApplication.run(BootApplication.class, args);
    }

}
