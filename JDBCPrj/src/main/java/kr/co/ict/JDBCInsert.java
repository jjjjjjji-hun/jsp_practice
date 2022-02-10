package kr.co.ict;

import java.sql.*;
import java.util.Scanner;

public class JDBCInsert {

	public static void main(String[] args) {
		// Scanner로 name, id, pw, email을 입력받아
		// INSERT INTO 구문을 이용해 DB에 데이터를 적재하도록 만들어보겠습니다.
		
		// SELECT Q1처럼 작성해주시되(입력받기, DB연결, 쿼리문 실행 등..)
		// SELECT구문을제외한 나머지 INSERT, DELETE, UPDATE 구문은
		// 결과 데이터가 없기 때문에 실행했을때 에러가 나지 않는다면
		// 우선 실행된것으로 볼 수 있고, 실행이 된 다음 워크벤치에서
		// 데이터가 들어갔는지 확인해주시면 됩니다.
		
		// 쿼리문 실행시 SELECT구문은 executeQuery(구문); 을 호출했지만
		// SELECT이외 구문은 executeUpdate(구문); 을 호출합니다.
		try {
			Scanner scan = new Scanner(System.in);
			System.out.println("추가할 유저의 이름을 입력해주세요.");
			String uName = scan.nextLine();
			
			System.out.println("추가할 유저의 아이디를 입력해주세요.");
			String uId = scan.nextLine();
			
			System.out.println("추가할 유저의 비밀번호를 입력해주세요.");
			String uPw = scan.nextLine();
			
			System.out.println("추가할 유저의 이메일을 입력해주세요.");
			String uEmail = scan.nextLine();
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac1",
															"root", 
															"mysql");
			Statement stmt = con2.createStatement();
			
			// 디버깅을 위해 쿼리문 실행전 콘솔에서 조회
			System.out.println("실행예정 쿼리문");
			System.out.println("INSERT INTO userinfo VALUES ('" + uName + "', '" + uId + 
								"', '" + uPw + "', '" + uEmail + "')");
			System.out.println("-------------");
			// 쿼리문 콘솔 출력 끝
			stmt.executeUpdate("INSERT INTO userinfo VALUES ('" + uName + "', '" + uId + 
								"', '" + uPw + "', '" + uEmail + "')");
			
			scan.close();
		} catch(Exception e) {
			e.printStackTrace();
		  }
	}
}
