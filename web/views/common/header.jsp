<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식단관리 페이지</title>
<!-- 부트스트랩 footer -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style2.css" type="text/css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script"
	rel="stylesheet">
</head>
<body>
	<header>

		<div class='login'>
			<a onclick="document.getElementById('login').style.display='block'">Login</a>
			<a href="Join.do">join</a>

		</div>
		<div id="pageName">
			<h1 style="margin-left: 100px;">Calorie#</h1>
			<p>To be Healthy, To be Slim</p>
			<hr>
			<div style='text-align: center;'>
				<a href="#none" class='menu'>Diet Meal</a> <a href="#none"
					class='menu'>Board</a> <a href="#none" class='menu'>Go to Shop</a>
				<a href="#none" class='menu'>My Page</a>
			</div>
			<hr style="margin-bottom: 0px">
		</div>
	</header>
	<!-- 로그인 시작-->

	<div id="login" class="modal">
		<form class="modal-content animate"
			action="<%=request.getContextPath() %>/login.do">
			<div class="imgcontainer">
				<span
					onclick="document.getElementById('login').style.display='none'"
					class="close" title="Close Modal">&times;</span>
				<!--<img src="img_avatar2.png" alt="Avatar" class="avatar">-->
			</div>
			<div class="container">
				<label for="userId"><b>아이디</b></label> <input type="text"
					placeholder="아이디입력" name="userId" required> <label
					for="password"><b>비밀번호</b></label> <input type="password"
					placeholder="비밀번호 입력" name="password" required>

				<button type="submit">Login</button>
				<label> <input type="checkbox" checked="checked"
					name="remember"> 아이디 저장
				</label>
			</div>

			<div class="container" style="background-color: #f1f1f1">
				<button type="button"
					onclick="document.getElementById('login').style.display='none'"
					class="cancelbtn">Cancel</button>
				<span class="password"><input type="button" onclick="#"
					value="비밀번호찾기"></a></span>
			</div>
		</form>
	</div>
	<script>
					// Get the modal
					var modal = document.getElementById('login');

					// When the user clicks anywhere outside of the modal, close it
					window.onclick = function(event) {
   						if (event.target == modal) {
        					modal.style.display = "none";
   						}
					}
		</script>
	<!-- 로그인 끝 -->
	<section>