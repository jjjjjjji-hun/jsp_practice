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
	<!-- begin 시작값, end 끝값(포함함), step 증가숫자, var 태그내에서 쓸 변수명  b e s 있으면 일반 for문-->
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
			<!-- ${i } X ${j } = ${i * j }<br/> -->
			<c:out value="${i } X ${j } = ${i * j }"></c:out><br/>
		</c:forEach>
		<hr/>
	</c:forEach>
	
	<hr/>
	<h1>숫자가 아닌 요소를 반복하는 JSTL</h1>
	<%-- arr변수 내에 과일 5개 이름을 배열로 저장하는 구문 --%>
	<c:set var="arr" value='<%= new String[] {"사과", "딸기", "망고", "바나나", "포도"} %>'/>
	<%-- c:foreach는 향상된 for문 처럼 쓸 수도 있습니다. var 와 items 있으면 향상된 for문--%>
	<c:forEach var="i" items="${arr }">
		${i } &nbsp;
	</c:forEach>
	<%--
		String[] arr = {"사과", "딸기", "망고", "바나나", "포도"};
		for(String i : arr){
			out.println(i + "&nbsp;");
			}
	 --%>

	 <!-- int 배열에 10, 20, 30, 40, 50을 넣어주시고
	 forEach문을 이용해 화면에 출력해주세요. 변수명은 마음대로 만들어주셔도 됩니다. -->
	 <hr/>
	 <c:set var="num" value='<%= new int[] {10, 20, 30, 40, 50} %>'/>	 
	 <c:forEach var="i" items="${num }">
	 	${i } &nbsp;
	 </c:forEach>
</body>
</html>