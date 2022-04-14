<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Locale, java.util.Date" %>
<%@ page import="java.text.DateFormat" %>
<html>
<head>
<title>Internationalization</title>
</head>
<body>
	<%
		Locale locale = request.getLocale();
		String country = locale.getCountry();
		String language = locale.getLanguage();
	%>
	<h3>현재 로케일</h3>
	<p> 언어 : <%=language %>
	<p> 국가 : <%=country %>
</body>
</html>