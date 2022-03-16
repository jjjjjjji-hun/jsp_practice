<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<c:if test="${sessionScope.session_id eq null }">
	<script>
		location.href="http://localhost:8181/MyFirstWeb/boardList.do";
	</script>
</c:if>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="http://localhost:8181/MyFirstWeb/boardInsert.do" method="post">
		<input type="text" name="writer" value="${sId }" readonly/><br/>
		<input type="text" name="title" placeholder="글제목" required/><br/>
		<textarea rows="30" cols="50" name="content" placeholder="본문" required></textarea><br/>
		<input type="submit" value="글쓰기"/> &nbsp; &nbsp; <input type="reset" value="초기화"/>
	</form>
</body>
</html>