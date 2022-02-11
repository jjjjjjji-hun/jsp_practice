<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 아이디와 비밀번호를 적어넣을 수 있는 폼을 만들어주세요.
	목적지는 login_check.jsp 입니다. -->
	<h1>로그인 페이지</h1>
	<form action="login_check.jsp">
	<input type="text" name="fid" placeholder="아이디" required /><br/>
	<input type="password" name="fpw" placeholder="비밀번호" required /><br/>
	<input type="submit" value="로그인" />&nbsp;&nbsp;&nbsp;
	<input type="reset" value="초기화" />
	</form>
</body>
</html>