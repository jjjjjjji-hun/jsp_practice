<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  // 자바에서 import 구문을 이용해 사용하던 클래스들은 JSP파일에서도 역시
  // import 구문을 써야 합니다.
  // 지시자(Directive)의 경우 <%@ % > 사이에 기술하여
  // 문서 자체에서 사용할 설정이나 옵션을 지정합니다.
  Date date = new Date(); // 날짜 얻어오기
  
  List<String> names = new ArrayList<>();
  names.add("김자바");
  names.add("최언어");
  names.add("박자바");
  names.add("배언어");
  
  out.println(names.toString() + "<br/>");
  out.println(names.get(0) + "<br/>");
  
  out.println(date.getDate() + "<br/>");
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