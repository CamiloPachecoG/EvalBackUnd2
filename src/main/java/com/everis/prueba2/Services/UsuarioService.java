package com.everis.prueba2.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everis.prueba2.Models.Usuario;
import com.everis.prueba2.Repositories.UsuarioRepository;

@Service
public class UsuarioService {
	@Autowired
	UsuarioRepository userRepo;
	
	public Usuario save(Usuario usuario) {
		return userRepo.save(usuario);
	}
}
