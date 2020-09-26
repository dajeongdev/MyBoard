<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<%@ include file="../include/head.jsp" %>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function() {
	$("#login-btn").click(function(){
		var id = $("#user-id").val();
		var idR = /^[a-z0-9]{4,10}$/;
		var pwd = $("#user-pwd").val();
		var pwdR = /^[A-Za-z0-9]{8,16}$/; 

		$.ajax({
			url : '${pageContext.request.contextPath}/login/login-success',
			type : 'post',
			data : { id : id, id : pwd },
			dataType : 'json',
			success : function(data) {
				if(id !== null) {
					$('#check_id').text('아이디를 입력해주세요.');
					$('#check_id').css('color', 'red');
					$('#check_id').focus();
					$('#login-btn').attr("disabled", true);
				} else if (idR.test(id)) {
					$('#check_id').text('아이디는 소문자와 숫자 4~10자리만 가능합니다.');
					$('#check_id').css('color', 'red');
					$('#check_id').focus();
					$('#login-btn').attr("disabled", true);
				} else {
					$('#check_id').text("");
					$('#login-btn').attr("disabled", false);
					$('#check_pwd').focus();
				}
		
				if(pwd !== null) {
					$('#check_pwd').text('비밀번호를 입력해주세요.');
					$('#check_pwd').css('color', 'red');
					$('#check_pwd').focus();
					$('#login-btn').attr("disabled", true);
				} else if (pwdR.test(pwd)) {
					$('#check_pwd').text('비밀번호는 소문자와 숫자 8~16자리만 가능합니다.');
					$('#check_pwd').css('color', 'red');
					$('#check_pwd').focus();
					$('#login-btn').attr("disabled", true);
				} else {
					$('#check_pwd').text("");
					$('#login-btn').attr("disabled", false);
				}
			}, error : function() {
				console.log("로그인 실패");
			}
		});
	});
});
</script>
<body>
<%@ include file="../include/header.jsp" %>
<div class = "page-container">

	<div class="login-wrapper">
		<h4 class="marB_20">코니멀에 오신 것을 환영합니다</h4>
		<p class="marB_45 bold">로그인을 하시면 펫과사전과 커뮤니티에 참여하실 수 있습니다</p>
		<div class="login-container">
			<c:if test="${user == null}">
			<form action="/login/login-success" method="post">
			<div class="login-box">		
				<div><input class="user-input" type="text" id="user-id" name="user_id" placeholder="아이디"/><div id="check_id"></div></div>
				<div><input class="user-input" type="password" id="user-pwd" name="password" placeholder="비밀번호"/><div id="check_pwd"></div></div>
				<button class="btn mar0_auto" id="login-btn">로그인</button>
			</div>
			</form>
			</c:if>
			
			<div class="login-api-box">
				<button class="login-api" id="google-api">구글 아이디로 로그인</button>
				<button class="login-api" id="kakao-api">카카오 아이디로 로그인</button>
			</div>
		</div>
		<div class="user-find-box">
			<a href ="/join/find" class="text-button">아이디 / 비밀번호 찾기</a>
			<a href ="/join/join-select" class="text-button">회원가입</a>
		</div>
	
	</div>
	
	
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>