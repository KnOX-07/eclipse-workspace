<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vistor Count</title>
</head>
<body>
<%!
   static int count=0;
   
%>
<%
	String s=request.getParameter("uname");
	
	if(s!=null && !s.isEmpty()){
		out.print("Welcome "+s);
		session.setAttribute("user",s);
	}else{
		out.print("Welcome Guest");
	}
	
	if(session.isNew()){
		count=1;
	}else{
		count+=1;
	}
	out.println("<p>Number of visitors: " +count+ "</p>");
%>
</body>
</html>