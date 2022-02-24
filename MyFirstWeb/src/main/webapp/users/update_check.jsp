<%@page import="kr.co.ict.UserDAO"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 한글깨지는 문제 해결
	request.setCharacterEncoding("utf-8");
	// 1. form에서 보낸 비번, 이름, 이메일을 변수로 저장해주세요.
	String fPw = request.getParameter("fpw");
	String fName = request.getParameter("fname");
	String fEmail = request.getParameter("femail");
	
	// 2. session에 저장된 아이디를 변수로 저장해주세요.	
	String seId = (String)session.getAttribute("session_id");
	String sePw = (String)session.getAttribute("session_pw");
	
	/*// 3. DB접속정보 변수로 관리
	String dbType = "com.mysql.cj.jdbc.Driver";
	String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
	String dbId = "root";
	String dbPw = "mysql";
	
	// 4. 연결
	try{
		Class.forName(dbType);
		Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
	
	// 5. pstmt 생성 및 ?에 값 세팅
		String sql = "UPDATE userinfo SET upw = ?, uname = ?, uemail = ? WHERE uid = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, fPw);
		pstmt.setString(2, fName);
		pstmt.setString(3, fEmail);
		pstmt.setString(4, seId);
		
	// 6. pstmt 실행 및 자원회수
		pstmt.executeUpdate();
		if(fPw.equals(sePw)){
			out.println("<script>alert('기존 비밀번호와 동일합니다.');</script>");
		}
		con.close();
		pstmt.close();
	} catch(Exception e){
		e.printStackTrace();
	}finally{
		
	}*/
	
	// 위쪽 3~6 코드를 DAO로 대체해서 처리해주세요.
	UserDAO dao = new UserDAO();
	dao.updateCheck(seId, fPw, fName, fEmail);
	// 7. body태그에 XXX 회원의 정보가 수정되었습니다. 라고 안내해주고
	// welcome페이지로 돌아갈 수 있는 링크 넣어주기.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%=seId %>님의 정보가 수정되었습니다.</h1>
	
	<a href="login_welcome.jsp">홈페이지로 돌아가기</a>
</body>
</html>