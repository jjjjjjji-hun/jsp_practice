<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	public int total = 0;
	String visit(){
		String result;
	for(int i = 0; i > 0; i++){
		if(total == 10*i){
			result = "당첨되셨습니다!!";
		}	
	}
	return result;
}
%>

	<h2>페이지 누적 요청 수 : <%=total %></h2>
	<p>매 10번째 방문자에게는 기프티콘을 드립니다.</p>
	<p><%=visit() %>

<%
	out.print(++total);
%>
</body>
</html>