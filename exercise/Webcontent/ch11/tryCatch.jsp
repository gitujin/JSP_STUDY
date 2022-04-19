<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<%
		try{
			int a = 100/0;
		} catch(Exception e){
	%>
	<p> 오류 발생 : <%= e.getLocalizedMessage()%>
	<%
	}
	%>
</body>
</html>