<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	form태그를 만들어주시고 목적지는 travel_check.jsp, post방식입니다.
	라디오 버튼을 최소 4개를 만들어주세요.
	각 라디오 버튼에는 속성으로 value= 이라고 해서 뭘 선택했는지 식별할 수 있도록
	각 버튼별로 다른 value값을 지정해주세요.
	
	submit 버튼도 하나 만들어주세요. --%>
	<h2>가고싶은 여행지</h2>
	<form action="travel_check.jsp" method="post">
	타이베이<input type="radio" name="city" value="taibay"/><br/>
	뉴욕<input type="radio" name="city" value="newyork"/><br/>
	런던<input type="radio" name="city" value="london"/><br/>
	파리<input type="radio" name="city" value="paris"/><br/>
	<input type="submit" value="여행가기"/>
	</form>
</body>
</html>