<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fruit Store</title>
<link rel="stylesheet" href="/css/style.css" />
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
		<div class="container d-flex flex-column justify-content-center gap-3 align-content-center p-5 margin-2">
			<h1>Fruit Store</h1>
			<table class="table table-bordered table-striped table-dark">
				<thead>
					<tr>
						<th>Name</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody>
					<!-- check if the fruit name starts with g and make text orange if true -->
				<c:forEach var="fruit" items="${fruits}">
				<tr>
					<c:if test = "${fruit.name.charAt(0) == G}">
						<td class="orange-text"><c:out value="${fruit.name}"/></td>
					</c:if>
					<c:if test = "${fruit.name.charAt(0) != G}">
						<td><c:out value="${fruit.name}"/></td>
					</c:if>
					<td class="text-success fw-bold"><c:out value="${fruit.price}"/></td>
				</tr>
				</c:forEach>
				</tbody>
			</table>
		
		</div>
	<script src="/js/app.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>