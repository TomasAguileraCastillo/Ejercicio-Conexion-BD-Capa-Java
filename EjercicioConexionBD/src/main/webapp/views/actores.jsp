<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Actores</title>
<link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.dataTables.css" />

<jsp:include page="header.jsp"></jsp:include>
	<main>
	
	
	
	
		<div class="container sm">
			<br/><br/>
			<div>
				<a class="btn btn-dark" href="#" role="button" id="mostrar" onclick="ocultaMuestra()" >Agregar Registro 
					<i class="bi bi-file-earmark-plus"></i>
				</a>
				<button onclick="ocultaMuestra()">Clickeame</button>
			<br/><br/>
			</div>
			<section id="seccionForm">
				<form>
					<div class="row mb-3">
						<div class="form-floating">
							<input type="text" class="form-control" id="floatingInputValue" placeholder="Nombre" value="">
							<label class="" for="floatingTextarea">Nombre : </label>
						</div>
					</div>
					<div class="row mb-3">
						<div class="form-floating">
							<input type="text" class="form-control" id="floatingInputValue" placeholder="Nombre" value="">
							<label class="" for="floatingTextarea">Apellido : </label>
						</div>
					</div>
					<hr/>		
					<div class="justify-content-end">
						<button type="submit" class="btn btn-secondary">Sign in</button>
					</div>
				</form>
			</section>
		</div>
		<div class="container sm">
			<div>
			<br/>
				<table class="table" id="tblActores">
					<thead>
				    	<tr>
				      		<th  >Id</th>
				      		<th  >Nombre</th>
				      		<th  >Apellido</th>
				      		<th  >Acciones</th>
				      	</tr>
					</thead>
					<tbody>
						<c:forEach var="a" items="${actores}">
							<tr>
								<td >
									<c:out value="${a.getId()}"></c:out>
								</td>
								<td >
									<c:out value="${a.getFirstname()}"></c:out>
								</td>
								<td >
									<c:out value="${a.getLastname()}"></c:out>
								</td>
								<td>
									<a href="" class="btn btn-secondary" >
										<i class="bi bi-pencil-square"></i>
									</a>
									<a href="" class="btn btn-danger" >
										<i class="bi bi-trash"></i>
									</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</main>
<jsp:include page="footer.jsp"></jsp:include>	
	<script>
		
		
		
		 
		
	</script>
	
	