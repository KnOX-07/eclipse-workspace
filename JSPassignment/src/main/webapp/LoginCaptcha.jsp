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
<title>LoginCaptcha</title>
</head>
<body>
	<h2>Login Page</h2>
    <form action="WelcomeServlet" method="post">
        <label for="username">UserName:</label>
        <input type="text" id="username" name="username" required><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>

        <label for="captcha">Your Captcha:</label><br>
        <p style="font-size: 20px; font-weight: bold;">
            <%= captcha.toString() %>
        </p><br>

        <label for="captchaInput">Enter Captcha:</label>
        <input type="text" id="captchaInput" name="captchaInput" required><br><br>

        <input type="submit" value="Login" style="background-color: cyan;">
    </form>
</body>
</html>