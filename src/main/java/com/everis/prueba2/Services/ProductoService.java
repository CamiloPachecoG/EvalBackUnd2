package com.everis.prueba2.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everis.prueba2.Models.Producto;
import com.everis.prueba2.Repositories.ProductoRepository;

@Service
public class ProductoService {
	@Autowired
	ProductoRepository prodRepo;
	
	public Producto save(Producto producto) {
		return prodRepo.save(producto);
	}
	
	public List<Producto> findAll(){
		return prodRepo.findAll();
	}
	

}
