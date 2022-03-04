<html>
<head>
<title>Sctripting Tag</title>
</head>
<%! String a = "Hello, Java Server Pages"; %>
<body>
	<%-- 스크립틀릿 태그 --%>
	<% 
		out.print(getString(a));
	%>
	<%! public String getString(String a){
			return	a;
	}%>
</body>
</html>