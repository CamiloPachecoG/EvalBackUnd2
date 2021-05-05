package com.everis.prueba2.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.everis.prueba2.Models.Producto;
import com.everis.prueba2.Services.ProductoService;


@Controller
@RequestMapping("/carrito")
public class CarritoController {
	
	@Autowired
	ProductoService prodService;
	
	@RequestMapping("")
	public String showCarrito(Model model) {
		List<Producto> productos = prodService.findAll();
		model.addAttribute("listaProductos", productos);
		
		float totalProductos = 0;
		
		for(Producto prod:productos) {
			totalProductos = totalProductos + prod.getPrecio();
		}
		
		model.addAttribute("totalProductos", totalProductos);
		
		return "carrito.jsp";
	}
	
}
