<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Mark List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        .container {
            margin: 50px auto;
            width: 600px;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px #000;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Student Mark List</h2>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (Exception e) {
                out.println("<p style='color:red;'>Failed to initialize MySQL JDBC driver: " + e.toString() + "</p>");
            }

            Connection conn = null;
            PreparedStatement ps = null;

            try {
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_db", "root", "Rupal@db123");
                String regisno = request.getParameter("regisno");
                String sql = "SELECT name, subject, marks FROM students WHERE regisno = ?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, regisno);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    out.println("<h3>Register Number: " + regisno + "</h3>");
                    out.println("<h3>Student Name: " + rs.getString("name") + "</h3>");
                    out.println("<table>");
                    out.println("<tr><th>Subject</th><th>Marks</th></tr>");

                    do {
                        String subject = rs.getString("subject");
                        int marks = rs.getInt("marks");
                        out.println("<tr><td>" + subject + "</td><td>" + marks + "</td></tr>");
                    } while (rs.next());

                    out.println("</table>");
                } else {
                    out.println("<p style='color:red;'>No records found for Register Number: " + regisno + "</p>");
                }

            } catch (Exception e) {
                out.println("<p style='color:red;'>Connection failed: " + e.toString() + "</p>");
            } finally {
                if (ps != null) try { ps.close(); } catch (SQLException e) { /* ignore */ }
                if (conn != null) try { conn.close(); } catch (SQLException e) { /* ignore */ }
            }
        %>
    </div>
</body>
</html>