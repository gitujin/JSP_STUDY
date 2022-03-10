<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<h4>구구단 출력하기</h4>
	<jsp:useBean id="func" class="ch04.com.dao.GuGuDan" />
	<%
		int arr[]=func.process(5);
		for(int i=0;i<9;i++){
			out.println(5 + "*" + (i+1) + "=" + arr[i] + "<br>");
		}
	%>
</body>
</html>