<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title><c:out value="${page}"></c:out></title>
</head>
<body>

	<div class="container mt-5">
		<h1 class="text-center">Welcome! to Todo manager</h1>
		<c:if test="${not empty msg}">
			<div class = "alert alert-success">
				<b><c:out value="${msg}"></c:out></b>
			</div>
		</c:if>
		<div class="row mt-5">
			<div class="col-md-2">

				<div class="list-group">
					<a href="#" class="list-group-item list-group-item-action active"
						aria-current="true"> Menu </a> <a
						href="<c:url value = '/add'></c:url>"
						class="list-group-item list-group-item-action"> Add Todo</a> <a
						href="<c:url value = '/home'></c:url>"
						class="list-group-item list-group-item-action"> View Todo</a>
				</div>
			</div>
			<div class="col-md-10">
				<c:if test="${page =='home'}">
					<h3 class="text-center">All Todos</h3>
					<c:forEach items="${todos}" var="t">
						
						<div class = "card">
							<div class="card-body">
								<h3><c:out value = "${t.todoTitle}"></c:out></h3>
								<p><c:out value = "${t.todoContent}"></c:out></p>
								<p class='fst-italic'><c:out value = "${t.todoData}"></c:out></p>
							</div>
						</div>
					
					
					</c:forEach>
					
				</c:if>
				<c:if test="${page =='add'}">
					<h3 class="text-center">Add New TODO</h3>
					<br>
					<form:form action="saveTodo" method="post" modelAttribute="todo">
						<div class="form-group">
							<form:input path="todoTitle" cssClass="form-control"
								placeholder="Enter title" />
						</div>

						<div class="form-group">
							<form:textarea path="todoContent" cssClass="form-control"
								placeholder="Enter content" cssStyle="height:200px;" />

						</div>

						<div class="container text-center mt-4">
							<button class="btn btn-outline-success">ADD TODO</button>
						</div>
					</form:form>
				</c:if>

			</div>
		</div>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>


</body>
</html>