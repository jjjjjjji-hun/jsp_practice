<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//String elName = request.getParameter("fname");
	//String elNick = request.getParameter("fnickname");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 
이름 :	<%=elName %><br/>
별명 :	<%=elNick %><br/>
 --%>
-----------------------EL식 출력------------------<br/>
이름 : ${param.fname }<br/>
별명 : ${param.fnickname }<br/>
</body>
</html>