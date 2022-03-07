<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="http://localhost:8181/MyFirstWeb/insertBoard" method="post">
		<input type="text" name="title" placeholder="글제목"/>
		<input type="text" name="content" placeholder="본문"/>
		<input type="text" name="writer" placeholder="글쓴이"/>
		<input type="submit" value="제출"/>
	</form>
</body>
</html>