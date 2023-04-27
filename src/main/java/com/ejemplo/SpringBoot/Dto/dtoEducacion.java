package com.ejemplo.SpringBoot.Dto;

import javax.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class dtoEducacion {
    @NotBlank
    private String nombre;
    @NotBlank
    private String descripcion;
    @NotBlank
    private String inicio;
    @NotBlank
    private String fin;
    @NotBlank
    private String img;
    
    public dtoEducacion() {
    }

    public dtoEducacion(String nombre, String descripcion, String inicio, String fin, String img) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.inicio = inicio;
        this.fin = fin;
        this.img = img;
    }
}