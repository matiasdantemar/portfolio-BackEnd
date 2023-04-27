package com.ejemplo.SpringBoot.Service;

import com.ejemplo.SpringBoot.Entity.Proyecto;
import com.ejemplo.SpringBoot.Repository.RProyecto;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;


public class SPersona {
     @Autowired
     RProyecto rProyecto;
     
     public List<Proyecto> list(){
         return rProyecto.findAll();
     }
     
     public Optional<Proyecto> getOne(int id){
         return rProyecto.findById(id);
     }
     
     public Optional<Proyecto> getByNombre(String nombre){
         return rProyecto.findByNombre(nombre);
     }
     
     public void save(Proyecto proye){
         rProyecto.save(proye);
     }
     
     public void delete(int id){
         rProyecto.deleteById(id);
     }
     
     public boolean existsById(int id){
         return rProyecto.existsById(id);
     }
     
     public boolean existsByNombre(String nombre){
         return rProyecto.existsByNombre(nombre);
     }
}
