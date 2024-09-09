<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Update Result</title>
</head>
<body>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
}
catch(Exception e){
	out.println("Fail to initialize mysql JDBC driver: "+e.toString()+"<p>");
}
Connection conn=null;
PreparedStatement ps = null;
try{
	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","Rupal@db123");
	out.println("Connection established!!! "+ conn);
	out.println("==================================================");
	String empid = request.getParameter("empid");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String desg = request.getParameter("desg");
	String salary = request.getParameter("salary");

	String sql = "UPDATE employee SET name = ?, age = ?, desg = ?, salary = ? WHERE empid = ?";
	ps = conn.prepareStatement(sql);
	ps.setString(1, name);
	ps.setInt(2, Integer.parseInt(age));
	ps.setString(3, desg);
	ps.setDouble(4, Double.parseDouble(salary));
	ps.setInt(5, Integer.parseInt(empid));
	int ri = ps.executeUpdate();
	if(ri>0){
		out.println("<h3>Updating Success</h3>");
	} else {
		out.println("<h3>Updating Error:</h3>");
	}
}
catch(Exception e){
	out.println("Connection failed!!! "+ e.toString());
	out.println("================================================");
}
%>
</body>
</html>