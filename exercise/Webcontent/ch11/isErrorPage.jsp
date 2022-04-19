<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isErrorPage="true" %>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<% response.setStatus(200); %>
	
	<h3>오류 발생</h3>
	<table border="1">
	<tr>
	<td width="100px">Error: </td>
	<td> <%=request.getAttribute("javax.servlet.error.exception") %> : 오류발생!!</td>
	</tr>
	
	<tr>
	<td> URI :</td>
	<td><%=request.getAttribute("javax.servlet.error.request_uri") %> </td>
	</tr>
	
	<tr>
	<td>Status Code:</td>
	<td><%=request.getAttribute("javax.servlet.error.status_code") %></td>
	</tr>
	</table> 
	
	</table>
</body>
</html>