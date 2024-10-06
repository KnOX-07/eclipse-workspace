<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Bean</title>
</head>
<body>
<jsp:useBean id="obj" class="jspActionTags.square"/>
<%
int m=obj.square(3);
out.print("Square of 3 is: "+m);
%>
</body>
</html>