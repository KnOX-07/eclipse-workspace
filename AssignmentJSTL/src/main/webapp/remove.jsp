<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Remove Tag</title>
</head>
<body>
	<h1>
	<c:set var="name" value="Rupal"/>
		Hello,
		${name}
	<br>
	<c:remove var="name"/>
		Hello,
		${name}
	</h1>
</body>
</html>