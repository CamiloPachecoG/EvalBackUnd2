package com.everis.prueba2.Repositories;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.everis.prueba2.Models.Producto;

@Repository
public interface ProductoRepository extends JpaRepository<Producto, Long> {
	
}
