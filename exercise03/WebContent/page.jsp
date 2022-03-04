<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<%@ page import = "java.util.Date" %>
	현재 날짜 : <%= new Date() %><br>
	<%@ page import = "java.lang.Math" %>
	5의 제곱 : <%=Math.pow(5,2) %>
</body>
</html>