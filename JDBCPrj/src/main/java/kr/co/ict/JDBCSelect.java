package kr.co.ict;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCSelect {

	public static void main(String[] args) {
		// JDBC 연결 여부 확인
		
		try {//1번
		// MySQL을 연돌할 것임을 알리기 위해  forName 내부에 MySQL용 연동구문을 적습니다.
			// SQL 연동은 try ~ catch 블럭 내부에 넣도록 강제됨.
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 커넥션 객체는 연결 여부를 확인합니다.
			//2번
			// 입력요소는 접속주소, mysql 계정명, mysql 비밀번호 순으로 입력합니다.
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac1",//접속url
											"root", //mysql 아이디
											"mysql"); // mysql 비밀번호
			
			//3번
			// 쿼리문을 연결된 mysql에 날려주기 위해, 쿼리문을 준비합니다.
			// 쿼리문은 Statement 라는 변수에 저장해 날려줍니다.
			Statement stmt = con.createStatement();
			// .excuteQuery() 내부에 실행할 쿼리문을 매개변수로 작성합니다.
			// SELECT 구문을 실행할 때 excuteQuery()를 실행합니다.
			// SELECT 문을 실행한 결과 자료는 ResultSet 이라는 자료로 받을 수 있습니다.
			//4번
			ResultSet rs = stmt.executeQuery("SELECT * FROM userinfo");
			// stmt.executeUpdate()는 SELECT이외의 구문, INSERT와 DELETE와 UPDATE를 실행할 때 씁니다.
			// 여기까지가 workbench 에서 Ctrl + Enter를 누른것과 같음
			//-----------
			
			// ResultSet은 기본적으로 row 개수만큼 내부에 데이터를 저장합니다.
			// ResultSet은 특정 번호를 집어서 조회하는 경우보다는 순차적으로
			// 조회해서 쓰는 경우가 많습니다.
			// 맨 처음 ResultSet은 -1번이라는 임시번호를 타겟으로 잡습니다.
			// 이 번호를 옮기기 위해 .next()를 호출하면 다음 번호로 넘어갑니다.
			//rs.next(); // 다음 번호가 조회되면 true, 없으면 false
			// get자료형(인덱스번호, 1부터) or get자료형(컬럼명)을 쓰면
			// 해당 컬럼의 자료를 반환합니다.
			/*System.out.println(rs.getString(1));
			System.out.println(rs.getString(2));
			System.out.println(rs.getString("upw"));
			System.out.println(rs.getString("uemail"));*/
			
			// while문을 이용해서 select구문의 전체 결과를
			// 콘솔에 찍어주세요.
			// 1, 4번 컬럼은 컬럼명으로 출력, 2, 3 번 컬럼은 인덱스로 출력
			while(rs.next()) {
				System.out.println(rs.getString("uname"));
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
				System.out.println(rs.getString("uemail"));
				System.out.println("---------");
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}

	}
}