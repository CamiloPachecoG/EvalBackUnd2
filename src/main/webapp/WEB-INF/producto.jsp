<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Productos</title>
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
		<div class="row">
			<div class="col-md-3">
				<div class="card justify-items-center">
				<h3 class="text-center">Agregar Producto</h3>
				  <div class="card-body">
				    <form action="/producto/insertar" method="POST">
					  <div class="form-group">
					    <label for="nombre">Nombre</label>
					    <input type="text" class="form-control" id="nombre" name="nombre">
					  </div>
					  <div class="form-group">
					    <label for="descripcion">Descripción</label>
					    <input type="text" class="form-control" id="descripcion" name="descripcion">
					  </div>
					  <div class="form-group">
					    <label for="precio">Precio</label>
					    <input type="text" class="form-control" id="precio" name="precio">
					  </div>
					  <div class="form-group">
					    <label for="cantidad">Cantidad</label>
					    <input type="text" class="form-control" id="cantidad" name="cantidad">
					  </div>
					  <div class="form-group">
						<select name="categoria" class="custom-select">
							<option value="0">Seleccione una categoria..</option>
							<c:forEach var="categoria" items="${listaCategorias}">
								<option value="<c:out value="${categoria.id}"></c:out>"><c:out value="${categoria.nombre}"></c:out></option>
							</c:forEach>
						</select>					  
					  </div>
					  <button type="submit" class="btn btn-outline-primary btn-block">Agregar</button>
					</form>
				  </div>
				</div>
			</div>
			 
			<div class="col-md-9">
				<div class="card justify-items-center">
				<h3 class="text-center">Lista de Producto</h3>
				  <div class="card-body">
				    <table class="table">
					  <thead>
					    <tr>
					      <th scope="col">Nombre</th>
					      <th scope="col">Categoria</th>
					      <th scope="col">Descripcion</th>
					      <th scope="col">Precio</th>
					      <th scope="col">Cantidad</th>
					      <th scope="col">Agregar</th>
					      <th scope="col">Eliminar</th>
					    </tr>
					  </thead>
					  <tbody>
					  	<c:forEach var="producto" items="${listaProductos}">
					    <tr>
					      <td><c:out value="${producto.nombre}"></c:out></td>
					      <td><c:out value="${producto.categoria.nombre}"></c:out></td>
					      <td><c:out value="${producto.descripcion}"></c:out></td>
					      <td><c:out value="${producto.precio}"></c:out></td>
					      <td><c:out value="${producto.cantidad}"></c:out></td>
					      <td></td>
					      <td><a href="/producto/eliminar/${producto.id}">Eliminar</a></td>
					    </tr>
					    </c:forEach>
					  </tbody>
					</table>
				  </div>
				</div>
			</div>
			
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</html>