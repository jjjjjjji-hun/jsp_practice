package kr.co.ict;

import java.sql.*;
import java.util.Scanner;

public class JDBCUpdate {

	public static void main(String[] args) {
		// UPDATE 구문도 처리해보세요.
		// UPDATE는 id는 변경하지 않습니다.
		// 어떤 아이디의 pw, name, email을 변경할지 조회하기 위해
		// 먼저 id를 받고, 그 다음
		// pw, name, email을 받아서
		// UPDATE구문에서 조건절에 id를 넣어 타겟을 정하고
		// 나머지 항목만 수정 되도록 처리해주세요.

		String dbType = "com.mysql.cj.jdbc.Driver";
		String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
		String dbId = "root";
		String dbPw = "mysql";
		try {
			Scanner scan = new Scanner(System.in);
			System.out.println("수정 할 유저의 아이디를 입력해주세요.");
			String uId = scan.nextLine();
			System.out.println("변경할 아이디의 이름, 비밀번호, 이메일을 입력해주세요.");
			String uName = scan.nextLine();
			String uPw = scan.nextLine();
			String uEmail = scan.nextLine();
			
			Class.forName(dbType);
			Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
			Statement stmt = con.createStatement();
			
			System.out.println("실행예정 쿼리문");
			System.out.println("UPDATE userinfo SET uname = '" + uName +
													"', upw = '" + uPw + 
													"', uemail = '" + uEmail +
													"' WHERE uid = '" + uId + "'");
			System.out.println("--------");
			
			stmt.executeUpdate("UPDATE userinfo SET uname = '" + uName +
													"', upw = '" + uPw + 
													"', uemail = '" + uEmail +
													"' WHERE uid = '" + uId + "'");
			con.close();
			stmt.close();
			scan.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
