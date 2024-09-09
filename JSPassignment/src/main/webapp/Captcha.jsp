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
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Captcha</title>
</head>
<body>
	<h2>Generated CAPTCHA:</h2>
    <p style="font-size: 24px; font-weight: bold;">
        <%= captcha.toString() %>
    </p>
</body>
</html>