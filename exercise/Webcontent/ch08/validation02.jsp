<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkForm(){
		var form=document.frm;
		var passwd=form.passwd.value;
		var passwdcheck=form.passwd2.value;
		if(passwd!=passwdcheck){
			alert("비밀번호 다시 확인");
			return false;
		}
		if(/(\w)\1\1/.test(passwd)){
			alert("영문, 숫자는 3자 이상 연속 입력 불가능");
			form.passwd.focus();
			return false;
		}
		form.submit();
	}
</script>
<body>
	<form name="loginForm">
		<p> 아이디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="text" name="passwd">
		<p> 비밀번호 확인 : <input type="text" name="passwd2">
		<input type="submit" value="전송" onclick="checkForm()">
	</form>
</body>
</html>