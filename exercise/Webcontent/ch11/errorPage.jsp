<%@ page contentType="text/html; charset=utf-8" %>
<%@ page errorPage="isErrorPage.jsp" %>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<%
		int x = 1;
		if(x==1){
			throw new RuntimeException("");
		}
	%>
</body>
</html>