<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.Date" %>
<%
String name=request.getParameter("name");
session.setAttribute("name",name);
session.setAttribute("starttime",new Date());
Date starttime=(Date) session.getAttribute("starttime");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<style>
 .par1{
 position:absolute;
 top:15px;
 right:15px;
 }
</style>
</head>
<body>
<div class="par1">start time:<%=starttime %></div>
<%
out.println("Hello, "+name);
%>
<form action="logout.jsp" method="post"><br>
<input type="submit" value="Logout">
</form>
</body>
</html>