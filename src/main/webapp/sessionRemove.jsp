<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단일세션 삭제</title>
</head>
<body>
	<%
		String s_id =session.getAttribute("memberId").toString();
		String s_pw =session.getAttribute("memberPw").toString();
		out.println("아이디(세션) :" + s_id + "<br>");
		out.println("비밀번호(세션) :" + s_pw + "<br>");
	%><br>
	-- 단일 세션 삭제 후 결과 -- <br><br>
	<%
		 session.removeAttribute("memberPw");
	
		 s_id =session.getAttribute("memberId").toString();
		 s_pw =(String) session.getAttribute("memberPw");
		 out.println("아이디(세션) :" + s_id + "<br>");
		 out.println("비밀번호(세션) :" + s_pw + "<br>");
	%>
</body>
</html>