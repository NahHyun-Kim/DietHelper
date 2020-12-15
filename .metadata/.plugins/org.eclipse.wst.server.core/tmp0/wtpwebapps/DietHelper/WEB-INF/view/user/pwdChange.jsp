<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="poly.util.CmmUtil"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>비밀번호 수정</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!------ jquery   ---------->
<script src="/resources/jquery-3.5.1.min.js"></script>

<!-- DietHelper 메인 로고 -->
<link href="/resource/assets/img/healthlogo.JPG" rel="icon">

<!-- 폰트 -->
<link href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css' rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="/resource/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/resource/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="/resource/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="/resource/assets/vendor/venobox/venobox.css" rel="stylesheet">
<link href="/resource/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="/resource/assets/vendor/aos/aos.css" rel="stylesheet">

<!-- 부트스트랩 css 사용 -->
<link rel="stylesheet" href="/resource/css/bootstrap.css">
<link rel="stylesheet" href="/resource/css/bootstrap.min.css">
<link rel="stylesheet" href="/resource/css/style.css">
</head>

<body>

	<!-- 우측 상단 DietHelper 로고 -->
      <nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="/MainPage.do" style="color:#778899;"><b>Diet
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-activity"> <polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>&nbsp;
						Helper</b></a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<!-- 왼쪽 상단 DietHelper 메뉴(로그인 정보, 로그아웃, 메뉴) -->
   <header id="header">
    <div class="d-flex flex-column">
<!-- Header 메뉴의 프로필사진, 로그인 닉네임 표시 -->
<div class="profile">
        <img src="resource/assets/img/healthlogo.JPG" alt="" class="img-fluid rounded-circle">
        <h1 class="text-light">환영합니다!
       <br/> <a style="color:skyblue;"><%=CmmUtil.nvl((String)session.getAttribute("user_an"))%>&nbsp;님</a>
        </h1>
				
				<div style="margin-left:100px;margin-top:10px;">
					<a style="color:pink;" href="/Logout.do"><b>로그아웃</b></a></div>
        </div>
      </div>

	<!-- 메뉴바의 메뉴 네비게이션 -->
		<nav class="nav-menu">
			<ul>
				<li class="active"><a href="/MainPage.do"><i
						class="bx bx-home"></i> <span>메인 페이지</span></a></li>
				<li><a href="/MyPage.do"><i class="bx bx-user"></i> <span>회원
							정보</span></a></li>
				<li><a href="/Diet/MyMetabolism.do"><i class="bx bx-file-blank"></i>
						<span>나의 프로필</span></a></li>
				<li><a href="/MyFoodList.do"><i class="bx bx-book-content"></i>나의
						식단</a></li>
				<li><a href="/map.do"><i class="bx bx-book-content"></i>집주변 체육시설</a></li>		
				<li><a href="#healthwise"><i class="bx bx-server"></i>다이어트
						팁</a></li>
				<li><a href="javascript:window.history.back();"><i class="bx bx-server"></i>뒤로가기</a></li>
						
			</ul>
		</nav>
	</header>
	
<!-- 메뉴바를 제외한 비밀번호 수정 화면 -->
	<main id="main">
		<div>
			<section id="hero"
				class="d-flex flex-column justify-content-center align-items-center">
				<div class="mx-auto text-center">
					<h1 class="mx-auto my-0 text-uppercase" style="color: lightgray;">
						<b><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-activity"> <polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>&nbsp;Change
							Your PW&nbsp;</b>
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-activity"> <polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
					</h1>
					<br>
				</div>

			<div class="hero-container" >
				<form action="/pwdchgPost.do" method="post" id="PwdForm" onsubmit="return InsertCheck()">
					<div class="table table-dark" style="font:11px Nanum Gothic, font-weight:400;font-size:1.2em;color:black;background-color:#ffc838;">
						<div class="row m-1 pt-5 pb-5">
							<div class="col-5 text-center" style="font:11px Nanum Gothic, font-weight:400;font-size:1.2em;color:black;">
								<b>현재 비밀번호</b>
							</div>
							<div class="col-7 text-right">
								<input type="password" name="originpwd" id="originpwd" onfocusout="PwdCheck()" placeholder="현재 비밀번호"
									style="height:30px;width: 200px; border:#d9a600; background-color:#ffc838; color:black; padding: 0px 0px 0px 5px;" />
								<div id="originpwd-insert" class="alert alert-dark">현재
									비밀번호을 입력해주세요</div>
								<div id="originpwd-success" class="alert alert-success">
								비밀번호가 일치합니다.</div>
								<div id="originpwd-danger" class="alert alert-danger"
									>현재 비밀번호가 다릅니다.</div>
							</div>
						</div>
						
						
						<div class="row m-1 pt-3 pb-5">
							<div class="col-5 text-center" style="font:11px Nanum Gothic, font-weight:400;font-size:1.2em;color:black;">
								<b>바꿀 비밀번호</b>
							</div>
							<div class="col-7 text-right">
								<input type="password" name="password" id="password_1"
									placeholder="변경할 비밀번호"
									style="height:30px;width: 200px;  border:#d9a600; color: black; background-color:#ffc838; color:black; padding: 0px 0px 0px 5px;" />
								<div id="alert-check" class="alert alert-danger">영문,숫자,특수문자를
									포함한 12~20자로 설정해주세요.</div>
							</div>
							<br>
						</div>
						

						<div class="row m-1 pt-3 pb-5">
							<div class="col-5 text-center" style="font:11px Nanum Gothic, font-weight:400;font-size:1.2em;color:black;">
								<b>비밀번호 확인</b>
		 					</div>
							<div class="col-7 text-right">
								<input type="password" name="password" id="password_2" 
									placeholder="변경할 비밀번호 확인"
									style="height:30px;width: 200px;  border:#d9a600;background-color:#ffc838; color:black; padding: 0px 0px 0px 5px;" />
								<div id="alert-insert" class="alert alert-dark">비밀번호 확인을 입력해주세요</div>
								<div id="alert-success" class="alert alert-success">비밀번호가 일치합니다.</div>
								<div id="alert-danger" class="alert alert-danger">비밀번호가 일치하지 않습니다.</div>
							</div>
							<br>
						</div>
		</div>
						<hr>
					<hr>

					<div class="row">
						<div class="col-6">
						<input type="button" class="btn btn-success" value="비밀번호 수정"
						onclick="submit()" style="width: 300px; height: 70px;">
						</div>
						<div class="col-6">
						<input
						type="reset" class="btn btn-danger" value="다시 작성" style="width: 300px; height: 70px;">
						</div>
					</div>
				
				</form>
			</div>
			</section>
			</div>

<!-- 화면이 작아질 때 사라지는 메뉴바를 보일 수 있게 하는 버튼(우측 상단) -->
		<button type="button" class="mobile-nav-toggle d-xl-none"><i class="icofont-navigation-menu"></i></button>

	</main>
<!-- 메인 페이지 화면, 운동 명언 끝 -->

<!-- 왼쪽 하단 @Copyright Footer, 화면 작아질 시 하단에 로고 표시 -->
	<footer id="footer">
		<div class="container">
			<div class="copyright">
				&copy; Copyright <strong><span>DietHelper</span></strong>
			</div>
		</div>
	</footer>

	<!-- Vendor JS Files -->
	<script src="/resource/assets/vendor/jquery/jquery.min.js"></script>
	<script src="/resource/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="/resource/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="/resource/assets/vendor/php-email-form/validate.js"></script>
	<script src="/resource/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
	<script src="/resource/assets/vendor/counterup/counterup.min.js"></script>
	<script
		src="/resource/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="/resource/assets/vendor/venobox/venobox.min.js"></script>
	<script src="/resource/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="/resource/assets/vendor/typed.js/typed.min.js"></script>
	<script src="/resource/assets/vendor/aos/aos.js"></script>

	<!-- TimeCheck, PwdChange JS 사용 -->
	<script type="text/javascript" src="/resources/js/timeCheck.js"></script>
	<script type="text/javascript" src="/resources/js/pwdchange.js"></script>

	<!-- 부트스트랩 js 사용 -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="/resource/js/bootstrap.js"></script>
	<script type="text/javascript" src="/resource/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/resource/js/main.js"></script>
</body>

</html>