<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Implicit Object</title>
</head>
<body>
	<p> 선택한 과일
	<%
		String fruit[] = request.getParameterValues("fruit");
	%>
	<%
		for(String f:fruit) out.print("<br>"+f+" ");
	%>
</body>
</html>