<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>
<link rel = "stylesheet"
	href = "http://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<%@ include file = "menu.jsp" %>
	<%! String greeting = "도서 웹 쇼핑몰"; %>
	<div class = "jumbotron">
		<div class ="container">
			<h1 class = "display-3">
				<%= greeting %>
			</h1>
		</div>
	</div>
	<%@ include file = "footer.jsp" %>
</body>
</html>