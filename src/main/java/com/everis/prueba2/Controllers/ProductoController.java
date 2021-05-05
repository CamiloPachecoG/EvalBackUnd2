package com.everis.prueba2.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.everis.prueba2.Models.Categoria;
import com.everis.prueba2.Models.Producto;
import com.everis.prueba2.Repositories.ProductoRepository;
import com.everis.prueba2.Services.CategoriaService;
import com.everis.prueba2.Services.ProductoService;

@Controller
@RequestMapping("/producto")
public class ProductoController {
	@Autowired
	ProductoService prodService;
	@Autowired
	ProductoRepository prodRepo;
	@Autowired
	CategoriaService catService;
	
	@RequestMapping("")
	public String inicio(Model model) {
		model.addAttribute("listaCategorias", catService.findAll());
		model.addAttribute("listaProductos", prodService.findAll());
		return "producto.jsp";
	}
	
	
	@RequestMapping("/insertar")
	public String insertar(@RequestParam("nombre") String nombre,
			@RequestParam("descripcion") String descripcion,
			@RequestParam("precio") String precio,
			@RequestParam("cantidad") String cantidad,
			@RequestParam("categoria") Categoria categoria,
			Model model) {
		
		Producto producto = new Producto();
		producto.setNombre(nombre);
		producto.setDescripcion(descripcion);
		producto.setPrecio(Float.parseFloat(precio));
		producto.setCantidad(Integer.parseInt(cantidad));
		producto.setCategoria(categoria);
		
		producto = prodService.save(producto);
		
		return "redirect:";
	}
	
	@RequestMapping("/eliminar/{id}")
	public String eliminar(@PathVariable("id") Long id) {
		prodRepo.deleteById(id);
		return "redirect:/producto";
	}
	
	
	
	
}
