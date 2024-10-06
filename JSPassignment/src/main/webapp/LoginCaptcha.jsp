<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Random, java.util.Collections, java.util.ArrayList" %>
<%
    String capitalAlphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    String smallAlphabets = "abcdefghijklmnopqrstuvwxyz";
    String specialChars = "@#$^";
    String numericDigits = "0123456789";

    Random random = new Random();
    
    ArrayList<Character> captchaList = new ArrayList<>();

    // Add one character from each category to ensure each is represented
    captchaList.add(capitalAlphabets.charAt(random.nextInt(capitalAlphabets.length())));
    captchaList.add(smallAlphabets.charAt(random.nextInt(smallAlphabets.length())));
    captchaList.add(specialChars.charAt(random.nextInt(specialChars.length())));
    captchaList.add(numericDigits.charAt(random.nextInt(numericDigits.length())));
    
    String allCharacters = capitalAlphabets + smallAlphabets + specialChars + numericDigits;
    
    for(int i = captchaList.size(); i < 6; i++){
        captchaList.add(allCharacters.charAt(random.nextInt(allCharacters.length())));
    }
    
    Collections.shuffle(captchaList);

    StringBuilder captcha = new StringBuilder();
    for(Character ch : captchaList){
        captcha.append(ch);
    }
    
    session.setAttribute("captcha", captcha.toString());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LoginCAPTCHA</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    .login-container {
        width: 100%;
        max-width: 400px;
        margin: 50px auto;
        background-color: white;
        box-shadow: 0 0 15px rgba(0,0,0,0.1);
        padding: 20px;
        border-radius: 10px;
    }
    h2 {
        text-align: center;
        color: #333;
    }
    label {
        font-weight: bold;
        margin-bottom: 5px;
        display: inline-block;
    }
    input[type="text"], input[type="password"] {
        width: calc(100% - 10px);
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }
    .captcha-box {
        text-align: center;
        font-size: 24px;
        font-weight: bold;
        color: #007BFF;
        border: 2px solid #007BFF;
        padding: 7px;
        background-color: #f0f8ff;
        border-radius: 5px;
        letter-spacing: 2px;
        margin-bottom: 10px;
        width: 120px;
    }
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #007BFF;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    .error {
        color: red;
        text-align: center;
        margin-top: 10px;
    }
</style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>

        <%
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) {
        %>
            <div class="error"><%= errorMessage %></div>
        <%
            }
        %>

        <form action="WelcomeServlet" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>

            <label for="captcha">Your Captcha</label>
            <div class="captcha-box">
                <%= captcha.toString() %>
            </div>

            <label for="captchaInput">Enter Captcha</label>
            <input type="text" id="captchaInput" name="captchaInput" required>

            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
