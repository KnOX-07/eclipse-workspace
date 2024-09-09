<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Intrinsic Objects</title>
</head>
<body>
	<h1>Use of Intrinsic Objects in JSP</h1>
	<h2>Request object</h2>
	Query String myname=<%=request.getParameter("name") %>
	myemailid=<%=request.getParameter("uemail") %><br>
	Context path: <%=request.getContextPath() %><br>
	Remote Host: <%=request.getRemoteHost() %><br>
	<h2>Response object</h2>
	Character Encoding Type: <%=response.getCharacterEncoding() %><br>
	Content Type: <%=response.getContentType() %><br>
	Locale: <%=response.getLocale() %><br>
	<h2>Session object</h2>
	ID: <%=session.getId() %><br>
	Creation Time: <%=new java.util.Date(session.getCreationTime()) %><br>
	Last Access Time: <%= new java.util.Date(session.getLastAccessedTime()) %><br>
</body>
</html>