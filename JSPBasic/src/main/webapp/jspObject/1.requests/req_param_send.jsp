<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--아래에 form을 만들고 내부에 input 4개를 만들어주세요.
input태그의 type속성은 하나는 text, 하나는 password
name 속성은 하나는 apple, 하나는 banana로 해 주세요.
reset 버튼과 submit 버튼도 각각 하나씩 만들어주세요.

form의 action이 바로 목적지를 적는 부분임
웹개발에서는 받을 페이지 회면의 주소를 적어줍니다. --%>
	<form action="req_param_getpost.jsp" method="get">
	<input type="text" name="apple" placeholder="apple"/><br/>
	<input type="password" name="banana" placeholder="banana"/><br/>
	
	취미 :
	<input type="checkbox" name="hobby" value="요리"/>요리&nbsp;
	<input type="checkbox" name="hobby" value="게임"/>게임&nbsp;
	<input type="checkbox" name="hobby" value="운동"/>운동&nbsp;
	<input type="checkbox" name="hobby" value="여행"/>여행&nbsp;
	<input type="checkbox" name="hobby" value="영화"/>영화&nbsp;
	<br/>
	전공 : (name, value는 각각 정해주세요. radio 4개를 작성해주세요.)
	<input type="radio" name="major" value="경찰학과"/>경찰학과&nbsp;
	<input type="radio" name="major" value="유아교육과"/>유아교육과&nbsp;
	<input type="radio" name="major" value="건축학과"/>건축학과&nbsp;
	<input type="radio" name="major" value="토목공학과"/>토목공학과&nbsp;
	
	<input type="reset" /><br/>
	<input type="submit" />
	</form>
</body>
</html>