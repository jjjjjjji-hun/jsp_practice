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
	String strAge = request.getParameter("age");
	// String check = request.getParameter("transfer");
	int age = Integer.parseInt(strAge);
	if(age >= 60){
		response.sendRedirect("bus_senior.jsp");
	}else if(age >= 20){
		response.sendRedirect("bus_adult.jsp");
	}else{
		response.sendRedirect("bus_junior.jsp");
	}
%>
<%-- 환승 시도
if(check== null && age >= 60){
		response.sendRedirect("bus_senior.jsp");
	}else if(check== null && age >= 20){
		response.sendRedirect("bus_adult.jsp");
	}else if(check== null && age < 20){
		response.sendRedirect("bus_junior.jsp");
	}else if(check!= null){
		Cookie trans = new Cookie("transfer", check);	
		trans.setMaxAge(5);
		response.addCookie(trans);
		response.sendRedirect("bus_transfer.jsp");	
	}
	 --%>
</body>
</html>