<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkLogin(){
		var form = document.form;
		
		if(form.id.value==""){
			alert("아이디 입력");
			form.passwd.select();
			return;
		}
		else if(form.passwd.value=""){
			alert.passwd.select();
			return;
		}
		if((form.passwd.value).search(form.id.value)>-1){
			alert("비밀번호는 ID를 포함할 수 없습니다.");
			return;
		}
		form.submit();
	}
</script>
<body>
	<form name="loginForm" action="validation01_process.jsp" method="post">
		<p> 아이디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="password" name="passwd">
		<p><input type="button" value="전송"  onclick="checkInfo()">
	</form>
</body>
</html>