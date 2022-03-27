<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.io.*, java.util.*" %>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<%
		Enumeration paraNames = request.getParameterNames();
		while(paraNames.hasMoreElements()){
			StringBuffer text = new StringBuffer((String)paraNames.nextElement());
			out.println(text+":");
			
			String value = request.getParameter(text.toString());
			out.println(value+"<br>");
		}
	%>
</body>
</html>