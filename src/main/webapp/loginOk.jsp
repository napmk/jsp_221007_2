<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 로그인 성공</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if((id.equals("tiger")) && (pw.equals("12345"))) {
			session.setAttribute("memberId", id);
			session.setAttribute("memberPw", pw);
			session.setMaxInactiveInterval(60*1);
			int sessionTime = session.getMaxInactiveInterval();
			out.println(id + "님 로그인 성공! / 로그인유효시간:" + sessionTime + "초");
		} else {
			
			out.println("로그인 실패!");
		}
	
	%>
	<br><br>
	<a href="sessionCheck.jsp">로그인 여부 확인</a><br><br>
	<a href="login2.jsp">로그인 화면 이동</a><br><br>
	<a href="sessionRemove.jsp">단일 세션 삭제 페이지 이동</a><br><br>
	<br><br>
	<a href="logout.jsp">로그 아웃</a>
	
</body>
</html>