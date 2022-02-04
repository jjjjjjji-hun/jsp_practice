<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<%if(id.equals("abcd") && pw.equals("1234")){ %>
<b><%=id %>님 환영합니다!</b>
<%}else{ %>
<b>로그인에 실패하셨습니다.</b><br/>
	<a href="req_login_form.jsp"><b>로그인창으로 돌아가기</b></a>
<%} %>
</body>
</html>