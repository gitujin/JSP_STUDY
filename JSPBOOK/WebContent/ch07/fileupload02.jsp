<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data" action="fileupload02_process.jsp">
		<p> 이름1:<input type="text" name="name1">
			제목1:<input type="text" name="subject1">
			파일1:<input type="text" name="filename1">
		<p> 이름2:<input type="text" name="name2">
			제목2:<input type="text" name="subject2">
			파일2:<input type="text" name="filename2">
		<p> 이름3:<input type="text" name="name3">
			제목3:<input type="text" name="subject3">
			파일3:<input type="text" name="filename3">
	</form>
</body>
</html>
