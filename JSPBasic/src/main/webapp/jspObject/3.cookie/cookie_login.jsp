<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// auto login 관련해서 발급된 쿠키가 있는지 체크해서 쿠키가 있다면
	// 로그인 창을 보여주는 대신 바로 welcome페이지로 보내주세요.(cookie_check.jsp 활용)
	Cookie[] cookies = request.getCookies();
	String autoLogin = null;
	String id = null;
	if(cookies != null){
		for(Cookie cookie : cookies){
		autoLogin = cookie.getName();
			if(autoLogin.equals("auto_login")){
			// cookie_welcome.jsp 페이지로 리다이렉트
			response.sendRedirect("cookie_welcome.jsp");
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 로그인창은 form으로 구성해주시면 됩니다. 
input text 1개(유저 아이디 입력), input password 1개 (비밀번호 입력)
input checkbox 1개 (자동로그인)
목적지는 cookie_login_ok.jsp로 해주세요.--%>
	<form action="cookie_login_ok.jsp" method="post">
	<input type="text" name="userId" placeholder="아이디"/><br/>
	<input type="password" name="userPw" placeholder="비밀번호"/><br/>
	자동로그인<input type="checkbox" name="auto" value="checked"/><br/>
	<input type="submit" value="로그인"/>
	<input type="reset" value="초기화"/>
	</form>
</body>
</html>