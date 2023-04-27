package com.ejemplo.SpringBoot.Dto;

import javax.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class dtoExperiencia {

    @NotBlank
    private String nombre;
    @NotBlank
    private String descripcion;
    @NotBlank
    private String tipo;
    @NotBlank
    private String inicio;
    @NotBlank
    private String fin;
    @NotBlank
    private String img;

    //Constructores
    public dtoExperiencia() {
    }

    public dtoExperiencia(String nombre, String descripcion, String tipo, String inicio, String fin) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.tipo = tipo;
        this.inicio = inicio;
        this.fin = fin;
    }
}
