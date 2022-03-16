<%@page import="kr.co.ict.UserDAO"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	// 폼에서 날려준 데이터를 받아서 변수에 저장해주세요.
	String fId = request.getParameter("fid");
	String fPw = request.getParameter("fpw");
	String fName = request.getParameter("fname");
	String fEmail = request.getParameter("femail");
	
	// 변수에 데이터가 잘 받아와졌는지 확인
	out.println(fId + "<br/>");
	out.println(fPw + "<br/>");
	out.println(fName + "<br/>");
	out.println(fEmail + "<br/>");
	
	// 위의 사용자가 입력한 데이터를 토대로
	// 스트립트릿 내부에서 DB연동을 한 다음 INSERT 구문을 실행하도록 만들면 회원가입 절차 구현 가능
	/*String dbType = "com.mysql.cj.jdbc.Driver";
	String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
	String dbId = "root";
	String dbPw = "mysql";
	
	try{
		Class.forName(dbType);
		Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
		
		String sql = "INSERT INTO userinfo VALUES (?, ?, ?, ?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, fName);
		pstmt.setString(2, fId);
		pstmt.setString(3, fPw);
		pstmt.setString(4, fEmail);
		
		pstmt.executeUpdate();
		
		con.close();
		pstmt.close();
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		out.println("회원가입이 완료되었습니다." + "<br/>");
	}*/
	
	//UserDAO dao = new UserDAO();
	// 싱글턴 패턴 처리
	UserDAO dao = UserDAO.getInstance();
	dao.insertUser(fName, fId, fPw, fEmail);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=fId %>님 환영합니다.
	<a href="login_form.jsp">로그인창으로 이동하기</a>
</body>
</html>