<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.regex.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Validation Result</title>
</head>
<body>
<%
    String email = request.getParameter("email");

    String emailRegex = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]{2,}\\.[a-zA-Z]{2,}$";
    Pattern pattern = Pattern.compile(emailRegex);
    Matcher matcher = pattern.matcher(email);

    if (matcher.matches()) {
%>
        <h2>Email is valid!</h2>
        <p>You entered: <%= email %></p>
<%
    } else {
%>
        <h2>Invalid Email!</h2>
<%
    }
%>
    <a href="email_form.jsp">Go Back</a>
</body>
</html>