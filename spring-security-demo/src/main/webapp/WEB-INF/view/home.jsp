<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thasir's Home Page</title>
</head>
<body>
	<h2>Thasir's Home Page</h2>
	<hr>
	<p>Welcome to my WebPage!!!</p>
	<hr>
	<!-- Display username and roles -->
	<p>
		User: <security:authentication property="principal.username" />
		<br>
		<br> 
		Role(s):<security:authentication property="principal.authorities" />
	</p>
	<hr>
	<!-- add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">
		<input type="submit" value="Logout" />
	</form:form>
</body>
</html>