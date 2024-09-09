<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.concurrent.TimeUnit"%>
<%
 String name = (String) session.getAttribute("name");
 Date startTime = (Date) session.getAttribute("starttime");
 Date endTime = new Date();
 long d = endTime.getTime() - startTime.getTime();
 long ds = TimeUnit.MILLISECONDS.toSeconds(d);
 session.invalidate();
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logged out</title>
</head>
<body>
<h2>Thank You, <%= name %>!</h2>
 <h4>You were logged in for <%= ds %> seconds.</h4>
</body>
</html>