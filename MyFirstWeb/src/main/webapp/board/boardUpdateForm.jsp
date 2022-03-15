<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="http://localhost:8181/MyFirstWeb/boardUpdate.do" method="post">
		<h1>${Board.board_num }번 글 상세페이지</h1>
		<input type="hidden" name="board_num" value="${Board.board_num }"/>
		글제목 : <input type="text" name="title" value="${Board.title }"/>
		글쓴이 : <input type="text" value="${Board.writer }" readonly/>
		조회수 : ${Board.hit}<br/>
		쓴날짜 : ${Board.bDate }"
		마지막 수정날짜 : ${Board.mDate }<br/>
		본문 : <textarea name="content" rows="15" cols="30">${Board.content}</textarea>
		<input type="submit" value="수정완료"/><input type="reset" value="초기화"/>
	</form>
</body>
</html>