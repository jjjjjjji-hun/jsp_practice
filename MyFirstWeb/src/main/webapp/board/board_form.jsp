<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="http://localhost:8181/MyFirstWeb/boardInsert.do" method="post">
		<input type="text" name="title" placeholder="글제목" required/><br/>
		<textarea rows="30" cols="50" name="content" placeholder="본문" required></textarea><br/>
		<input type="text" name="writer" placeholder="글쓴이" required/><br/>
		<input type="submit" value="글쓰기"/> &nbsp; &nbsp; <input type="reset" value="초기화"/>
	</form>
</body>
</html>