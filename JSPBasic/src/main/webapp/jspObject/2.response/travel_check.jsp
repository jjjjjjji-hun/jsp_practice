<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// radio는 여러 대상 중 하나만 선택할 수 있기 때문에
	// 데이터가 무조건 하나만 넘어오는것이 담보됩니다.
	// 콘솔을 이용해 전달데이터 확인
	String cityName = request.getParameter("city");
	System.out.println(cityName);
	
	if(cityName.equals("taibay")){
		response.sendRedirect("travel_taibay.jsp");
	}else if(cityName.equals("newyork")){
		response.sendRedirect("travel_newyork.jsp");
	}else if(cityName.equals("london")){
		response.sendRedirect("travel_london.jsp");
	}else if(cityName.equals("paris")){
		response.sendRedirect("travel_paris.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>