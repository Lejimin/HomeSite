<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>홈페이지</title>
<style>
	#contimg1{width: 100%; height: 700px;}
	#contimg2{width: 100%; height: 700px;}
	#contimg3{width: 100%; height: 700px;}
	#contimg4{width: 100%; height: 700px;}	
	
	#map{width:100%; height:400px;}
	
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

<div id="content-top">
	<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
	  <div class="carousel-inner">
	    <div class="carousel-item active" data-bs-interval="2000">
	      <img src="img/cont1.jpg" class="d-block w-100" id="contimg1">
	    </div>
	    <div class="carousel-item" data-bs-interval="2000">
	      <img src="img/cont2.jpg" class="d-block w-100" id="contimg2">
	    </div>
	    <div class="carousel-item" data-bs-interval="2000">
	      <img src="img/cont3.jpg" class="d-block w-100" id="contimg3">
	    </div>
	    <div class="carousel-item" data-bs-interval="2000">
	      <img src="img/cont4.png" class="d-block w-100" id="contimg4">
	    </div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>
</div>


	<div id="map"></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7c735b0e845baf5967c2d6ad8bc8e71b"></script>
		<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };
			
			// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
			var map = new kakao.maps.Map(mapContainer, mapOption); 
		</script>
		
		
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