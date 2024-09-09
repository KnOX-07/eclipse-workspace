<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check Email</title>
</head>
<body>
	<h2>Email Validation</h2>
    <form action="validateEmail.jsp" method="post">
        Enter email: <input type="text" name="email" required><br></br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>