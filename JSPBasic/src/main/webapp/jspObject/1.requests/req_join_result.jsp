<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	// post 방식으로 처리할 때 한글을 써도 깨지지 않게 하려면
	// 아래와 같은 코드를 작성해서 처리하면됩니다.
	request.setCharacterEncoding("utf-8");
	// 데이터 얻어오기
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
%>
<%if(id.equals("abcd")){ %>
<b>중복된 아이디로 가입할 수 없습니다.</b>
<%}else{ %>
<b><%=id %>(<%=name %>)님 회원가입을 축하드립니다.</b>
<% } %>
</body>
</html>