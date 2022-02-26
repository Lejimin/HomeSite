<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

<h3>회원가입</h3>
<form action="insert.do" method="post" name="reg_frm">
	<label for="id">ID : </label><input id="id" type="text" name="id"><br>
	<label for="pw">pw : </label><input id="pw" type="password" name="pw"><br>
	<label for="name">name : </label><input id="name" type="text" name="name"><br>
	<label for="email">email : </label><input id="email" type="text" name="email"><br>
	<label for="addr">address : </label><input id="addr" type="text" name="addr"><br>
	<input type="submit" value="회원가입">
</form>

</body>
</html>