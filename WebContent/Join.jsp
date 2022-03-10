<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>회원가입</title>

<style>
	#content{width:50%; height:700px; border:1px solid skyblue; margin: 20px 453px; background-color:skyblue; border-radius:20px;}
	#content>form{margin-left:170px; margin-top:20px;}
	#id{width:500px; height:50px;}
	#pw{width:500px; height:50px;}
	#name{width:500px; height:50px;}
	#email{width:500px; height:50px;}
	#addr{width:500px; height:50px;}
	#sign{width:200px; height:50px; margin-left:150px;}
	
	
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
    		<a class="navbar-brand" href="Main.jsp">여행 커뮤니티</a>
    		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      			<span class="navbar-toggler-icon"></span>
    		</button>
    		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		      <div class="navbar-nav">
		        <a class="nav-link active" aria-current="page" href="Main.jsp">Home</a>
		        <a class="nav-link" href="NoMember.jsp">게시판</a>
		        <a class="nav-link" href="login.jsp">로그인</a>
		        <a class="nav-link" href="Join.jsp">회원가입</a>
		      </div>
    		</div>
  		</div>
	</nav>
</div>


<div id="content">
 	<form class="row g-3" action="insert.do" method="post" name="reg_frm">
 	  <h1>회원가입</h1>
	  <div class="col-md-12">
	    <label for="id" class="form-label">ID</label>
	    <input type="text" name="id" class="form-control" id="id">
	  </div>
	  <div class="col-md-12">
	    <label for="pw" class="form-label">Password</label>
	    <input type="password" name="pw" class="form-control" id="pw">
	  </div>
	  <div class="col-md-12">
	    <label for="name" class="form-label">Name</label>
	    <input type="text" name="name" class="form-control" id="name">
	  </div>
	  <div class="col-md-12">
	    <label for="email" class="form-label">Email</label>
	    <input type="email" name="email" class="form-control" id="email">
	  </div>
	  <div class="col-12">
	    <label for="addr" class="form-label">Address</label>
	    <input type="text" name="addr" class="form-control" id="addr" placeholder="1234 Main St">
	  </div>
	  <div class="col-12">
	    <button type="submit" class="btn btn-primary" id="sign">Sign in</button>
	  </div>
	</form> 
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