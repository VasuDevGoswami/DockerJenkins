package com.docker.dockerspringboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DockerSpringbootApplication {

    @RequestMapping("/")
    public String fun(){
        return "Dockerised application newwwwwwwwwwwwww brach change";
    }
    public static void main(String[] args) {
        SpringApplication.run(DockerSpringbootApplication.class, args);
    }

}
