<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Import Tag</title>
</head>
<body>
	<c:import var="content" url="http://www.google.com"/>
	<c:out value="${content}"/>
</body>
</html>