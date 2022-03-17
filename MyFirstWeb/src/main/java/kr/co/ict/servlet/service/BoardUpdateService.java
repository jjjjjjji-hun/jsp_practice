package kr.co.ict.servlet.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.ict.BoardDAO;

public class BoardUpdateService implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// 변수 저장
		int bNum = Integer.parseInt(request.getParameter("board_num"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		BoardDAO dao = BoardDAO.getInstance();
		// update 메서드 호출
		dao.updateBoard(title, content, bNum);	
	}
}
