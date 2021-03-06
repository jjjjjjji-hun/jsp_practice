<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.ict.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- ${boardList }
	<hr/>
	출력방법 : 인덱싱이나 c:forEach를 이용해서 하나하나 꺼내준 다음
	.변수명을 적으면 출력됩니다. 
	0번째 요소 : ${boardList[0]}<br/>
	1번째 요소 : ${boardList[1]}<br/>
	2번째 요소 : ${boardList[2]}<br/>
	<hr/>
	현재 데이터 : ${boardList[0] }<br/>
	글번호 : ${boardList[0].board_num }<br/>
	글제목 : ${boardList[0].title }
	<hr/> -->
	<table class="table table-hover">
		<thead>
			<tr>
				<th>글번호</th>
				<th>글제목</th>
				<th>글쓴이</th>
				<th>쓴날짜</th>
				<th>최종수정날짜</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.board_num }</td>
				<td>
					<a href="http://localhost:8181/MyFirstWeb/boardDetail.do?board_num=${board.board_num }">${board.title }</a>
				</td>
				<td>${board.writer }</td>
				<td>${board.bDate }</td>
				<td>${board.mDate }</td>
				<td>${board.hit }</td>
			</tr>
		</c:forEach>
		</tbody>
		
	</table>
	
	<c:if test="${sId ne null }">
		<a href="http://localhost:8181/MyFirstWeb/insertForm.do"><button>글쓰기</button></a>
	</c:if>
	
	
		${dto }
	<!-- document의 pagination 파트를 보고 1부터 10까지 나열해보세요. -->
	<nav aria-label="...">
 	 <ul class="pagination">
    <li class="page-item ${dto.startPage eq 1 ? 'disabled' : '' }">
      <a class="page-link" href="http://localhost:8181/MyFirstWeb/boardList.do?pageNum=${dto.startPage-1}">Previous</a>
    </li>
    <c:forEach var="pageIndex" begin="${dto.startPage}" end="${dto.endPage}">
    <li class="page-item ${dto.currentPage eq pageIndex ? 'active' : '' }" aria-current="page">
      <a class="page-link" href="http://localhost:8181/MyFirstWeb/boardList.do?pageNum=${pageIndex}">${pageIndex}</a>
    </li>
    </c:forEach>
    <li class="page-item ${dto.endPage eq dto.totalPages ? 'disabled' : '' }">
      <a class="page-link" href="http://localhost:8181/MyFirstWeb/boardList.do?pageNum=${dto.endPage+1}">Next</a>
    </li>
  </ul>
</nav>

<hr/>
<h3>부스트랩 없이 만들기</h3>
<c:if test="${dto.startPage ne 1}">
	<a href="http://localhost:8181/MyFirstWeb/boardList.do?pageNum=${dto.startPage-1}">Previous</a>
</c:if>

<c:forEach var="pageIndex" begin="${dto.startPage}" end="${dto.endPage}">
	<c:if test="${dto.currentPage eq pageIndex}">
	<a href="http://localhost:8181/MyFirstWeb/boardList.do?pageNum=${pageIndex}"><b>[${pageIndex}]</b></a>
	</c:if>
	<c:if test="${dto.currentPage ne pageIndex}">
	<a href="http://localhost:8181/MyFirstWeb/boardList.do?pageNum=${pageIndex}">[${pageIndex}]</a>
	</c:if>
</c:forEach>

<c:if test="${dto.endPage ne dto.totalPages}">
	<a href="http://localhost:8181/MyFirstWeb/boardList.do?pageNum=${dto.endPage+1}">Next</a>
</c:if>
</body>
</html>