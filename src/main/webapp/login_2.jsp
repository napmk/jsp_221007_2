<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원로그인</title>
</head>
<body>
	<%	
		String sessionId = (String) session.getAttribute("memberId");
		if (sessionId == null) {
	%>
		<form action="loginOk.jsp">
			아이디 : <input type="text" name="id"><br><br>
			비밀번호 : <input type="text" name="pw"><br><br>
			<input type="submit" value="로그인">
		</form>
	<%
		} else {
	%>
		<%= sessionId %>님은 로그인 중입니다.
	<%
		}
	%>
	<br>
	<a href="memberinfo.jsp">까페</a>
</body>
</html>