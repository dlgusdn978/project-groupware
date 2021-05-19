<!-- 초기 home 화면 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/homeLayout.css" type="text/css">
<link rel="stylesheet" href="css/menubar.css" type="text/css">
<title>MJS Welfare System</title>
</head>
<body>
	<div class="mheader">
		<!--메뉴바 -->
		<div class="menubar">
			<div class="menubarWidth">
				<div class="menubarLogo">
					<!--로고추가하기-->
				</div>
				<div class="menubarMid">
					<nav id="navigation1">
						<ul id="topInfo">
							<!-- sign in -->
							<li><sec:authorize access="isAnonymous()">
									<a href="${path}/login">로그인</a>
								</sec:authorize>
								<form id="signUp" action="/login" method="POST">
									<input name="${_csrf.parameterName}" type="hidden"
										value="${_csrf.token}" />
								</form></li>
							<li><a href="${path}/inquiryList">문의</a></li>
							<li><a href="">사이트맵</a></li>
						</ul>
					</nav>
					<!-- 메뉴 -->
					<nav id="navigation2">
						<ul id="topMenu">
							<li><a href="homeLogin">홈</a></li>
							<li><a href="${path}/email/emailLogin">메일</a></li>
							<li><a href="${path}/communityList">게시판</a>
								<ul id="subMenu">
									<li><a href="${path}/noticeList">공지사항</a></li>
									<li><a href="${path}/communityList">커뮤니티</a></li>
									<li><a href="#">후기</a></li>
								</ul></li>
							<li><a href="#">강의실</a><ul id="subMenu">
									<li><a href="${path}/lectureRoom/lectureRoomList">강의실<br>예약</a></li>
									<li><a href="${path}/lectureRoom/reservationConfirm">예약 확인</a></li>
								</ul></li>
							<li><a href="">일정관리</a></li>
							<li><a href="">조회</a></li>
							<li><a href="">팀원관리</a></li>
							<li><a href="#">문서관리</a>
							<ul id="subMenu">
									<li><a href="${path}/team/meetingTeamList">회의록 관리</a></li>
									<li><a href="${path}/team/dataTeamList">자료 관리</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
				<!-- menubar_mid -->
			</div>
			<!-- menubar_width -->
		</div>
		<!-- menubar -->
	</div>
	<!-- mheader -->


	<div class="mbody">
		<div class="mcontWidth">
			<div class="leftBox">
				<div class="leftInfo">
					<!--로그인 전 화면-->
					<div class="loginMenu">
						<a href="login">로그인</a>
					</div>
					<div class="joinMenu">
						<a href="infoConsent">회원가입</a>
					</div>
					<!-- 개인정보동의 화면창으로 이동 -->
					<div class="findMenu">
						<a href="findPassword">비밀번호 찾기</a>
					</div>
				</div>
				<!-- left_info -->
			</div>
			<!-- left_box -->
		</div>
		<!-- mcont_width -->
	</div>
	<!-- mbody -->
</body>
</html>