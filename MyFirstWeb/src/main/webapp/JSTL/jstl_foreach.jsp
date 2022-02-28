<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	int total = 0;
	for(int i = 1; i < 101; i++){
		total += i;
	}
	out.println("<h1>1부터 100까지 총 합은: " + total + "</h1>");
--%>
	<!-- begin 시작값, end 끝값(포함함), step 증가숫자, var 태그내에서 쓸 변수명 -->
	<c:forEach begin="1" end="100" step="1" var="number">
		<c:set var="total" value="${total + number }"/>
	</c:forEach>

		<h1><c:out value="1~100까지의 총합 ${total }"></c:out></h1>
		<h1>1~100까지의 총합 ${total }</h1>
		
	<hr/>
	<!-- forEach문을 이용해서 구구단 4단을 출력해보세요. -->
		<c:forEach begin="1" end="9" step="1" var="dan">
			4 X ${dan} = ${4 * dan}<hr/>
		</c:forEach>

	<hr/>
	<!-- 구구단을 완성해보세요. -->
	<c:forEach begin="2" end="9" step="1" var="i">
				<h1>${i } 단입니다.<br/></h1>
		<c:forEach begin="1" end="9" step="1" var="j">
			${i } X ${j } = ${i * j }<br/>
		</c:forEach>
		<hr/>
	</c:forEach>
</body>
</html>