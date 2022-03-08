<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>게시판</title>
</head>
<body>
<div id="header">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  		<div class="container-fluid">
    		<a class="navbar-brand" href="#">커뮤니티</a>
    		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      			<span class="navbar-toggler-icon"></span>
    		</button>
    		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		      <div class="navbar-nav">
		        <a class="nav-link active" aria-current="page" href="Home.jsp">Home</a>
		        <a class="nav-link" href="list.jsp">게시판</a>
		        <a class="nav-link" href="Main.jsp">로그아웃</a>
		        <a class="nav-link" href="Join.jsp">회원가입</a>
		      </div>
    		</div>
  		</div>
	</nav>
</div>

<h1 style="margin-left:770px;">자유게시판</h1>
<table width="100%" cellpadding="0" cellspacing="0" border="1" class="table table-sm">

<tr class="table-dark">
	<td>번호</td>
	<td>이름</td>
	<td>제목</td>
	<td>날짜</td>
	<td>조회수</td>
</tr>

<c:forEach items="${list}" var="dto">
<tr class="table-success">
<td>${dto.bId}</td>
<td>${dto.bName}</td>
<td>
	<c:forEach begin="1" end="${dto.bIndent}">-</c:forEach>
	<a href="content_view.do?bId=${dto.bId}" style="text-decoration:none; color:black;">${dto.bTitle}</a>
</td>
<td>${dto.bDate}</td>
<td>${dto.bHit}</td>
</tr>
</c:forEach>
<tr class="table-danger">
	<td colspan="5"><a href="write_view.do" style="text-decoration:none; color:black;">글작성</a></td>
</tr>
</table>
</body>
</html>