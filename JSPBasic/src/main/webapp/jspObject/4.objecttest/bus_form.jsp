<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<img src="./repository/buscard.jpg"/>
	<form action="bus_check.jsp" method="get">
	나이 : <input type="number" name="age" /><br/>
	<%-- 환승 : <input type="checkbox" name="transfer"/><br/> --%>
	<input type="submit" value="확인"/>
	<input type="reset" value="초기화"/>
	</form>
</body>
</html>