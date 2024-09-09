<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check Authorization</title>
</head>
<body>
<%
 String name = request.getParameter("name");
 int age = Integer.parseInt(request.getParameter("age"));
 if (age < 18) {
 out.println("Hello "+ name + " you are not authorized to visit the site");
 } else {
 out.println("Welcome " + name + " to this site");
 }
 %>
</body>
</html>