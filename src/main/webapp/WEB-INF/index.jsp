<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
<body>
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-4">
				<div class="card justify-items-center">
				<h1 class="text-center">LOGIN</h1>
				  <div class="card-body">
				    <form>
					  <div class="form-group">
					    <label for="nombre">Nombre</label>
					    <input type="text" class="form-control" id="nombre" name="nombre">
					  </div>
					  <div class="form-group">
					    <label for="password">Password</label>
					    <input type="password" class="form-control" id="password" name="nombre">
					  </div>
					  <button type="submit" class="btn btn-primary"><a href="/home">Login</a></button>
					</form>
				  </div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card">
				<h1 class="text-center">REGISTRO</h1>
				  <div class="card-body">
				    <form action="/insertar" method="POST">
					  <div class="form-group">
					    <label for="nombre">Nombre</label>
					    <input type="text" class="form-control" id="nombre" name="nombre">
					  </div>
					  <div class="form-group">
					    <label for="apellido">Apellido</label>
					    <input type="text" class="form-control" id="apellido" name="apellido">
					  </div>
					  <div class="form-group">
					    <label for="password">Password</label>
					    <input type="password" class="form-control" id="password" name="password">
					  </div>
					  <button type="submit" class="btn btn-primary">Registro</button>
					</form>
				  </div>
				</div>
			</div>
		</div>
		
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</html>