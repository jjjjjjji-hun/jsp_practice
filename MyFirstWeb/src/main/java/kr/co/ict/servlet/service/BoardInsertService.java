package kr.co.ict.servlet.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.BoardDAO;

public class BoardInsertService implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
			// DAO 생성
			BoardDAO dao = BoardDAO.getInstance();
			// 폼에서 날아올때 사용하는 name은 title, content, writer입니다.
			// 폼에서 날려준 데이터를 자바 데이터로 저장해주세요.
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String writer = request.getParameter("writer");
			// insert로직 호출(필요 파라미터는 폼에서 날아온다고 가정하고 입력해주세요)
			dao.insertBoard(title, content, writer);
	}

}
