<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Action</title>
</head>
<body>
<p>
Today's date: <%= (new java.util.Date()).toLocaleString()%>
</p>
</body>
</html>