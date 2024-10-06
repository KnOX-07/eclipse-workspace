<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Forward</title>
</head>
<body>
<a>I was requested page but forwarded the request to other</a>
<jsp:forward page="other.jsp" />
</body>
</html>