<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<%
		session.invalidate(); //모든 세션 삭제
	%>
	<a href="sessionInfo.jsp">세션정보 체크</a>
	<a href="login_2.jsp">로그인화면으로 이동</a>
</body>
</html>