<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg bg-primary text-ligth"
			data-bs-theme="dark">
			<div class="container-fluid">
				<img src="/docs/5.3/assets/brand/bootstrap-logo.svg" alt="Logo"
					width="30" height="24" class="d-inline-block align-text-top">
				<a class="navbar-brand" href="#">
					<h4>Ejercicio de Conexion a BD Java</h4>
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse  justify-content-end"
					id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Inicio</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Listado</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Salir</a></li>

					</ul>
				</div>
			</div>
		</nav>
	</header>
	<main>
	
	<div class="container">
		<table class="table">
			<thead>
		    	<tr>
		      		<th scope="col">Id</th>
		      		<th scope="col">Nombre</th>
		      		<th scope="col">Apellido</th>
		    		</tr>
			</thead>
			<tbody>
				<c:forEach var="a" items="${actores}">
					<tr>
						<th >
							<c:out value="${a.getId()}"></c:out>
						</th>
						<th >
							<c:out value="${a.getFirstname()}"></c:out>
						</th>
						<th >
							<c:out value="${a.getLastname()}"></c:out>
						</th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</main>
	<footer>
	
	</footer>
	 
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>