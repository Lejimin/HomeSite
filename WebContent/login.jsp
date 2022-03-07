<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<script>

	function checkIt()
	{
		if(!document.myForm.pw.value || !document.myForm.id.value)
			{
				alert("ID 혹은 PW를 입력하지 않으셨습니다.")
				document.myForm.focus()
				return false
			}
	}

</script>


</head>
<body>
<h2>환영합니다!</h2>
<h3>로그인</h3>
<form name="myForm" action="LoginOK" method="post" onsubmit="return checkIt()">
	ID : <input type="text" name="id" id="id"><br>
	PW : <input type="password" name="pw" id="pw"><br>
	<input type="submit" value="로그인">
	<button><a href="Join.jsp" style="text-decoration: none; color: black;">회원가입</a></button>
</form>

</body>
</html>