package com.everis.prueba2.Services;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everis.prueba2.Models.Categoria;
import com.everis.prueba2.Repositories.CategoriaRepository;

@Service
public class CategoriaService {
	@Autowired
	CategoriaRepository catRepo;

	public Categoria save(Categoria categoria) {
		return catRepo.save(categoria);
	}
	
	public List<Categoria> findAll(){
		return catRepo.findAll();
	}
	
	public Categoria buscarPorId(Long id) {
		return catRepo.findById(id).get();
	}

	public @Valid Categoria actualizar(@Valid Categoria categoria) {
		return catRepo.save(categoria);
	}

}
