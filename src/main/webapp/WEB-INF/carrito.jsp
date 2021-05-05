<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carrito de Compra</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  		<a class="navbar-brand" href="#">Prueba2</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav">
	      <li class="nav-item active">
	        <a class="nav-link" href="/home">Inicio</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="/producto">Producto</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="/categoria">Categoria</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="/carrito">Carrito</a>
	      </li>
	    </ul>
	  </div>
	</nav>
	
	
	<div class="container mt-5">
		<div class="card">
		  <div class="card-header">
		    <h2 class="text-center">Listado Productos en Carrito</h2>
		  </div>
		  <div class="card-body">
		    <table class="table mt-4">
			  <thead>
			    <tr>
			      <th scope="col">Nombre</th>
			      <th scope="col">Descripcion</th>
			      <th scope="col">Precio</th>
			      <th scope="col">Categoria</th>
			    </tr>
			  </thead>
	  	  	  <tbody>
			  	<c:forEach var = "producto" items="${listaProductos}"> 
				    <tr>
						<td>${producto.nombre}</td>
						<td>${producto.descripcion}</td>
						<td>${producto.precio}</td>
						<td>${producto.categoria.nombre}</td>      
					</tr>
				</c:forEach>
	  	     </tbody>
			</table>
		  </div>
		  <div class="card-footer text-muted">
		    <h4 class="text-success mt-4">Total a Pagar: $<c:out value = "${totalProductos}"/></h4>
		    <a href="/home" class="btn btn-lg btn-outline-success mt-2">Pagar</a>
		  </div>
		</div>
	</div>
	
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</html>