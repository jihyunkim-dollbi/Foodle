<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
.welcome_id{color:#ff3a6d; font-weight:600;}
.welcome-msg{line-height: 1em;}
</style>
</head>
<body>
	<!--============================= LOGIN =============================-->
	<section class="login-block light-bg">
	  <div class="container py-5">
	    <div class="row justify-content-center">
	      <div class="logo_parent col-md-5 mb-4">
	        <!-- <h2>Foodle</h2> -->
	        <!-- 로고 생기면 h2 제거 후 로고 넣기 -->
	        <img class="logo" src="../images/foodle_temp_logo.png">
	      </div>
	    </div>
	    <div class="row justify-content-center">
		  <div class="col-md-5 pt-4">
		    <div class="welcome-wrap">
		      	<h3 class="text-center mb-5">환영합니다!</h3>
		      	<!-- 아직 데이터 연동 안 시켰음 -->
		      	<div class="mt-3">
		      		<p class="welcome-msg">Foodle 회원가입이 완료되었습니다.</p>
			      	<p class="welcome-msg"><b>${sessionScope.name }</b>님의 아이디는 <span class="welcome_id">${sessionScope.id }</span>입니다.</p>
					<p class="welcome-msg">Foodle과 함께 즐거운 맛집 생활을 시작하세요.</p>
		      	</div>
		    </div>
		  </div>
		</div>
		<div class="row justify-content-center">
		  <div class="col-md-5 pt-4">
		    <div class="login-btn-wrap">
		      <a href="../main/main.do" class="btn btn-danger">시작하기</a>
		    </div>
		  </div>
		</div>
	    
	  </div>
	  </div>
	</section>
	
  <!-- jQuery, Bootstrap JS. -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="../js/jquery-3.2.1.min.js"></script>
  <script src="../js/popper.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
	
</body>
</html>