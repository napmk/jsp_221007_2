<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션정보확인</title>
</head>
<body>
	<%
		String sessionId = (String)session.getAttribute("memberId");
		if (sessionId == null){
			out.println("로그인 중이 아닙니다.");
			
		}else{
			out.println(sessionId +"님은 로그인 중입니다.");
		}
	%>
	<a href="sessionInfo.jsp">세션의 모든정보 확인</a>
</body>
</html>