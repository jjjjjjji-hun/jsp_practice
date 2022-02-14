<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// DB연결 후, 세션에서 받아온 아이디를 이용해
	// 회원탈퇴 후 body태그 내에는 "아이디 회원의 탈퇴가 완료되었습니다."
	// 출력하고 실제로 DB에 DELETE 구문을 날려서 삭제까지 처리해주세요.
	
	// 로그인 안한 사용자가 접근시 login_form.jsp로 보내주세요.
	String seId = (String)session.getAttribute("session_id");
	
	String dbType = "com.mysql.cj.jdbc.Driver";
	String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
	String dbId = "root";
	String dbPw = "mysql";

	try{
		Class.forName(dbType);
		Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
		
		String sql = "DELETE FROM userinfo WHERE uid = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, seId);
		
		pstmt.executeUpdate();
		con.close();
		pstmt.close();
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		// 삭제가 성공했건 실패했건 회원탈퇴에 접근한 자체로 세션 파기
		session.invalidate();
		//response.sendRedirect("login_form.jsp");// 로그인 창으로 돌려보내기
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%=seId %>회원의 탈퇴가 완료되었습니다.</h1>
	<a href="login_form.jsp">메인화면으로 돌아가기</a>
</body>
</html>