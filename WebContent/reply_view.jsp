<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>게시판</title>
<style>
	#content{width:100%; height:500px;} 
	#content>table{margin: 60px 600px;}
	 
	#footer{width: 100%; height: 400px; margin-top:5px; background-color: #212529;}
	#footbox{width:300px; height:300px; position:relative; top:100px; left:700px;}
	#footbox>img{width:60px; height:60px; margin-left:27px;}
	#footbox>p{color:white; font-size:18px; text-align:center;}
</style>
</head>
<body>
<div id="header">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  		<div class="container-fluid">
    		<a class="navbar-brand" href="Home.jsp">여행 커뮤니티</a>
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

<div id="content">
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<form action="reply.do" method="post">
			<input type="hidden" name="bId" value="${reply_view.bId}">
			<input type="hidden" name="bGroup" value="${reply_view.bGroup}">
			<input type="hidden" name="bStep" value="${reply_view.bStep}">
			<input type="hidden" name="bIndent" value="${reply_view.bIndent}">
			<tr>
				<td>번호</td>
				<td>${reply_view.bId}</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${reply_view.bHit}</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="bName" value="${reply_view.bName}"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="bTitle" value="${reply_view.bTitle}"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" name="bContent">${reply_view.bContent}</textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="답변"><a href="list.do">목록</a></td>
			</tr>
		</form>
	</table>
</div>	
	
	<div id="footer">
	<div id="footbox">
		<img src="img/Facebookicon.png">
		<img src="img/Instagramicon.png">
		<img src="img/Twittericon.png"><br><br><br>
		<p>Call : 02-050-5555</p><br>
		<p>Travel Community</p>
	</div>
</div>
</body>
</html>