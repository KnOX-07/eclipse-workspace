<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Using JSTL Functions</title>
<style>
 	#par1{
 		color:red;
  	}
</style>
</head>
<body>
	<h2 id="par1">fn:contains()function</h2>
	<c:set var="str1" value="TECHNO INDIA"/>
	<h3>INDIA present in TECHNO INDIA : <c:out
	value="${fn:contains(str1,'INDIA')}"></c:out></h3>
	<h2 id="par1">fn:containsIgnoreCase()function</h2>
	<h3><c:out value="${fn:containsIgnoreCase(str1,'india')}"></c:out></h3>
	<h2 id="par1">fn:endsWith()function</h2>
	<c:choose>
 	<c:when test="${fn:endsWith(str1,'DIA')}"><c:out
	value="${fn:endsWith(str1,'DIA')}"></c:out></c:when>
 	<c:otherwise>False</c:otherwise>
	</c:choose>
	<h2 id="par1">fn:escapeXml()function</h2>
	message1:<b>HI This is just an example</b>
	<br>message2:<i>This is message2</i>
	<br>message3:Name :<mark>Rupal Mandal</mark><br>
	<br>message1 andfn:escapeXml():${fn:escapeXml("<b>HI This is just an example</b>") }
	<br>message2 and fn:escapeXml():${fn:escapeXml("<i>This is message2</i>")}
	<br>message3 and fn:escapeXml():${fn:escapeXml("Name: <mark>Rupal Mandal</mark>")}
	<h2 id="par1">fn:indexOf()function</h2>
	<h4>Index of "INDIA" in "TECHNO INDIA":${fn:indexOf(str1,'INDIA')}</h4>
	<h2 id="par1">fn:join()function</h2>
	<%
 		String a[]={"java","programming","language"};
 		session.setAttribute("names",a);
	%>
	${fn:join(names,"--")}
	<h2 id="par1">fn:length()function</h2>
	<h4>Length of str1 is:<c:out value="${fn:length(str1)}"></c:out></h4>
	<h2 id="par1">fn:toLowerCase()function</h2>
	<h4>str1 (Lowercase):<c:out value="${fn:toLowerCase(str1)}"></c:out></h4>
	<h2 id="par1">fn:toUpperCase()function</h2>
	<c:set var="str2" value="java-programming"/>
	<h4>str2 (Uppercase):<c:out value="${fn:toUpperCase(str2)}"></c:out></h4>
	<h2 id="par1">fn:startsWith()function</h2>
	<c:choose>
 	<c:when test="${fn:startsWith(str1,'TE')}"><c:out
	value="${fn:startsWith(str1,'TE')}"></c:out></c:when>
 	<c:otherwise>False</c:otherwise>
	</c:choose>
	<h2 id="par1">fn:split()function</h2>
	<c:set var="str3" value="java programming,DBMS,python,machine learning,AI"/>
	<c:set var="splitarray" value="${fn:split(str3,',')}"/>
	<h4>Original string:${str3}</h4>
	<c:forEach var="i" items="${splitarray}">
	<c:out value="${i}"/><br>
	</c:forEach>
	<h2 id="par1">fn:substring()function</h2>
	<c:set var="s1" value="This is an example of substring function"/>
	<c:out value="${fn:substring(s1,8,31)}"></c:out>
	<h2 id="par1">fn:substringAfter()function</h2>
	<c:set var="s1" value="This is an example of substring function"/>
	<c:out value="${fn:substringAfter(s1,'of')}"></c:out>
	<h2 id="par1">fn:substringBefore()function</h2>
	<c:set var="s1" value="This is an example of substring function"/>
	<c:out value="${fn:substringBefore(s1,'ple')}"></c:out>
	<h2 id="par1">fn:replace()function</h2>
	<c:set var="mt" value="Java Server page consits of HTML tags and Java Server page tags."/>
	<p>Original string:<c:out value="${mt}"></c:out></p>
	<c:set var="mrt" value="${fn:replace(mt,'Java Server page','JSP')}"/>
	<p>After replaced:<c:out value="${mrt}"></c:out></p>
	<h2 id="par1">fn:trim()function</h2>
	<c:set var="s4" value="This is an example of trim function"/>
	<p>(Before trim):<c:out value="${s4}"></c:out></p>
	<c:set var="s5" value="${fn:trim(s4)}"/>
	<p>(After trim):<c:out value="${s5}"></c:out></p>
</body>
</html>