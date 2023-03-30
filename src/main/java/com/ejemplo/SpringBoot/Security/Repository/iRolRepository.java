package com.ejemplo.SpringBoot.Security.Repository;

import com.ejemplo.SpringBoot.Security.Entity.Rol;
import com.ejemplo.SpringBoot.Security.Enums.RolNombre;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface iRolRepository extends JpaRepository<Rol, Integer>{
    Optional<Rol> findByRolNombre(RolNombre rolNombre);
}