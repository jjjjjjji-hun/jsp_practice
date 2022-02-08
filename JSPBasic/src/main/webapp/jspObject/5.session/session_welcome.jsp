<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String seId = (String)session.getAttribute("session_id");
	String sePw = (String)session.getAttribute("session_pw");
	String seNickName = (String)session.getAttribute("session_nick");

	// 로그인 안 한 사용자가 오면 login페이지로 되돌려보내주세요.
	if(seId == null){
		response.sendRedirect("session_login.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<h1><%=seNickName %>(<%=seId %>)님 로그인을 환영합니다.</h1>
	<a href="session_logout.jsp">로그아웃하기</a>
</body>
</html>