<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.Cookie" %>
<!DOCTYPE html>
<html>
<head>
    <title>List of Cookies</title>
</head>
<body>
    <h2>Stored Cookies</h2>

    <%
        // Get all cookies from the request
        Cookie[] cookies = request.getCookies();

        if (cookies != null && cookies.length > 0) {
            // Display all the cookies in a table
    %>
            <table border="1">
                <tr>
                    <th>Cookie Name</th>
                    <th>Cookie Value</th>
                </tr>
                <%
                    for (Cookie cookie : cookies) {
                %>
                        <tr>
                            <td><%= cookie.getName() %></td>
                            <td><%= cookie.getValue() %></td>
                        </tr>
                <%
                    }
                %>
            </table>
    <%
        } else {
            // If no cookies are stored
    %>
        <p>No cookies found!</p>
    <%
        }
    %>

</body>
</html>