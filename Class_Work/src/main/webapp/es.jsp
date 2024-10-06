<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Employee Search Result</title>
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
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/company", "root", "Rupal@db123");
                String empid = request.getParameter("empid");
                String sql = "SELECT emp_name, city, dept, mobile FROM employee WHERE empid = ?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, empid);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    out.println("<table>");
                    out.println("<tr><th>Emp_name</th><th>City</th><th>Department</th><th>Mobile_no</th></tr>");

                    do {
                        String emp_name = rs.getString("emp_name");
                        String city = rs.getString("city");
                        String dept = rs.getString("dept");
                        String mobile = rs.getString("mobile");
                        out.println("<tr><td>" + emp_name + "</td><td>" + city + "</td><td>" + dept + "</td><td>" + mobile + "</td></tr>");
                    } while (rs.next());

                    out.println("</table>");
                } else {
                    out.println("<p style='color:red;'>No records found for Employee ID: " + empid + "</p>");
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