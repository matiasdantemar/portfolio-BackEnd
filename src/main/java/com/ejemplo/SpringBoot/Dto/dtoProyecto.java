package com.ejemplo.SpringBoot.Dto;

import javax.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class dtoProyecto {

    @NotBlank
    private String nombre;
    @NotBlank
    private String color;
    @NotBlank
    private String url;

    public dtoProyecto() {
    }

    public dtoProyecto(String nombre, String color, String url) {
        this.nombre = nombre;
        this.color = color;
        this.url = url;
    }
}
