<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="header.jsp"></jsp:include>
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
		
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
		
	<script src="https://cdn.datatables.net/2.0.8/js/dataTables.js"></script>
	
	
</body>
</html>