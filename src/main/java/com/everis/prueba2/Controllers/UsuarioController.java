package com.everis.prueba2.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.everis.prueba2.Models.Usuario;
import com.everis.prueba2.Services.UsuarioService;

@Controller
public class UsuarioController {
	@Autowired
	UsuarioService userService;
	
	@RequestMapping("")
	public String login() {
		return "index.jsp";
	}
	
	@RequestMapping("/insertar")
	public String insertar(@RequestParam("nombre") String nombre,
			@RequestParam("apellido") String apellido,
			@RequestParam("password") String password) {
		
		int validaciones = 0;
		if(nombre.length() > 0 && apellido.length() > 0 && password.length() > 0) {
			System.out.println("Campos invalidos");
			validaciones++;
		}
		
		if(validaciones == 1) {			
			Usuario usuario = new Usuario();
			
			usuario.setNombre(nombre);
			usuario.setApellido(apellido);
			usuario.setPassword(password);
			
			usuario = userService.save(usuario);
			
			return "redirect:/home";
		}else {
			return "index.jsp";
		}
	}
}
