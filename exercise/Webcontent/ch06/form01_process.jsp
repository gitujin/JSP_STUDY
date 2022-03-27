<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	
	<p>아이디 : <% StringBuffer buf1 = new StringBuffer(request.getParameter("name")); out.print(buf1); %>
	<p>주소 : <% StringBuffer buf2 = new StringBuffer(request.getParameter("address")); out.print(buf2); %>
	<p>이메일 : <% StringBuffer buf3 = new StringBuffer(request.getParameter("email")); out.print(buf3); %>
</body>
</html>
