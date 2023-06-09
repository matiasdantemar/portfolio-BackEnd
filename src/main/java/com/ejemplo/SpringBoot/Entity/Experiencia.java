package com.ejemplo.SpringBoot.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Experiencia {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @NotNull
    @Size(min = 1, max = 50, message = "no cumple con la longitud") 
    private String nombre;
    
    @NotNull
    private String descripcion;
    
    private String tipo;
    private String inicio;
    private String fin;
    private String img;

    //Constructores
    public Experiencia() {
    }

    public Experiencia(String nombre, String descripcion, String tipo, String inicio, String fin, String img) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.tipo = tipo;
        this.inicio = inicio;
        this.fin = fin;
        this.img = img;
    }


}
