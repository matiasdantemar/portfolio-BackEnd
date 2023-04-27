package com.ejemplo.SpringBoot.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Proyecto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String nombre;
    private String color;
    private String url;

    public Proyecto() {
    }

    public Proyecto(String nombre, String color, String url) {
        this.nombre = nombre;
        this.color = color;
        this.url = url;
    }
}
