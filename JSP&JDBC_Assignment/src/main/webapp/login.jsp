<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<h2>User Login</h2>
    <form action="authenticate.jsp" method="post">
        <label for="uname">Username:</label>
        <input type="text" id="uname" name="uname" required><br><br>

        <label for="pass">Password:</label>
        <input type="password" id="pass" name="pass" required><br><br>

        <input type="submit" value="Login">
	</form>
</body>
</html>