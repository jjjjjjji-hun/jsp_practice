<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--<table class="table table-hover">
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
			<tr>
				<td>${Board.board_num }</td>
				<td>${Board.title }</td>
				<td>${Board.writer }</td>
				<td>${Board.bDate }</td>
				<td>${Board.mDate }</td>
				<td>${Board.hit }</td>
			</tr>
		</tbody>
	</table> -->
	<h1>${Board.board_num }번 글 상세페이지</h1>
	글제목 : <input type="text" value="${Board.title }" readonly/>
	글쓴이 : <input type="text" value="${Board.writer }" readonly/>
	조회수 : ${Board.hit}<br/>
	쓴날짜 : ${Board.bDate }"
	마지막 수정날짜 : ${Board.mDate }<br/>
	본문 : <textarea rows="15" cols="30">${Board.content}</textarea>
	<a href="http://localhost:8181/MyFirstWeb/boardList">목록으로</a>
</body>
</html>