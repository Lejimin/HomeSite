<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>로그인</title>
<style>
	#content{width:50%; height:700px; border:1px solid skyblue; margin: 20px 453px; background-color:skyblue; border-radius:20px;}
	#content>form{margin-left:170px; margin-top:100px;}
	#id{width:500px; height:50px;}
	#pw{width:500px; height:50px;}
	#sign{width:200px; height:50px; margin-left:150px;}
	
	#footer{width: 100%; height: 400px; margin-top:5px; background-color: #212529;}
	#footbox{width:300px; height:300px; position:relative; top:100px; left:700px;}
	#footbox>img{width:60px; height:60px; margin-left:27px;}
	#footbox>p{color:white; font-size:18px; text-align:center;}
</style>
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
<div id="header">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  		<div class="container-fluid">
    		<a class="navbar-brand" href="#">여행 커뮤니티</a>
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

<!-- <form name="myForm" action="LoginOK" method="post" onsubmit="return checkIt()">
	ID : <input type="text" name="id" id="id"><br>
	PW : <input type="password" name="pw" id="pw"><br>
	<input type="submit" value="로그인">
	<button><a href="Join.jsp" style="text-decoration: none; color: black;">회원가입</a></button>
</form> -->
<div id="content">
 	<form class="row g-3" name="myForm" action="LoginOK" method="post" onsubmit="return checkIt()">
 	  <h1>로그인</h1>
	  <div class="col-md-12">
	    <label for="id" class="form-label">ID</label>
	    <input type="text" name="id" class="form-control" id="id">
	  </div>
	  <div class="col-md-12">
	    <label for="pw" class="form-label">Password</label>
	    <input type="password" name="pw" class="form-control" id="pw">
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