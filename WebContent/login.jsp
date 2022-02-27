<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<h2>환영합니다!</h2>
<h3>로그인</h3>
<form action="Home.jsp" method="post">
	ID : <input type="text" name="id"><br>
	PW : <input type="password" name="pw"><br>
	<input type="submit" value="로그인">
	<button><a href="Join.jsp" style="text-decoration: none; color: black;">회원가입</a></button>
</form>

</body>
</html>