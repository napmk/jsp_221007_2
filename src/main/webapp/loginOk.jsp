<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원로그인성공</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if((id.equals("tiger")) && (pw.equals("12345"))){ //equals
			session.setAttribute("memberId", id);
			out.println(id + "님 로그인성공!");
			
		}else{
			out.println("로그인 실패!");
		}
	%>
	<a href="sessionCheck.jsp">로그인 여부 확인</a>
</body>
</html>