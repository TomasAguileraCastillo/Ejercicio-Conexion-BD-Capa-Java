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
				<a class="btn btn-dark" href="#" role="button" id="btnAgregarR"   >Agregar Registro 
					<i class="bi bi-file-earmark-plus"></i>
				</a>
			 
			<br/><br/>
			</div>
			<section id="seccionForm">
				<form method="post" action="${pageContext.request.contextPath}/actorDetails">
					<input type="hidden" id="id" name="id" value= "">
					<div class="row mb-3">
						<div class="">
						<label class="" >Nombre : </label>
							<input type="text" class="form-control" id="nombre" name="nombre"  value="" required>
							
						</div>
					</div>
					<div class="row mb-3">
						<div class=" ">
							<label class="" for="floatingTextarea">Apellido : </label>
							<input type="text" class="form-control" id="apellido" name="apellido" value="" required>
							
						</div>
					</div>
					<hr/>		
					<div class="justify-content-end">
						<button type="submit" class="btn btn-secondary">Agregar Registro</button>
						<button type="button" class="btn btn-danger" id="btnCancela" >Cancelar</button>
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
	$(document).ready( function () {
		$('#tblActores').DataTable();
	} );
	
	
	
	
	//funcion para ocultar formulario de registroi 	
	$(function (){
		let form = $('#seccionForm');
		let btnAgr = $('#btnAgregarR')
		form.hide();
		let ocultar = true;
		
		$(btnAgr).click(function(){
			if (ocultar){
				form.show();
				btnAgr.hide();
				ocultar = false;
			}else {
				form.hide();
				ocultar = true;
			}
			
			
		});
		
		$(btnCancela).click(function(){
			if (ocultar){
				//form.hide();
				ocultar = false;
			}else {
				btnAgr.show();
				form.hide();
				ocultar = true;
			}
			
			
		});
		
		
		
		
		
	});	
	
	
	
		 
		
	</script>
	
	