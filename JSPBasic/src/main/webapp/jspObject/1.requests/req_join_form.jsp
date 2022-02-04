<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="req_join_result.jsp" method="post">
	<%--post 방식으로 처리하는 경우 한글이 들어오면 화면에 깨져서 나옵니다. --%>
	<input type="text" name="id" placeholder="아이디"/><br/>
	<input type="password" name="pw" placeholder="비밀번호"/><br/>
	<input type="text" name="name" placeholder="이름"/><br/>
	<input type="number" name="age" placeholder="나이"/><br/>
	<input type="submit" value="회원가입"/>&nbsp;
	<input type="reset"/>
	</form>
</body>
</html>